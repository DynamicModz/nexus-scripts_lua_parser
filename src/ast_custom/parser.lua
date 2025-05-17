--[[

    Dev : NexusScripts

]]

local ast_nodes = require("ast_custom.ast_nodes")
local lexer = require("ast_custom.lexer")

local parser = {}

local tokens = {}
local current_token_idx = 1
local current_token = nil
local errors = {}
local comments = {}
local attached_comments = {}

local parse_identifier, parse_literal, parse_table_constructor
local parse_member_expression, parse_function_call, parse_method_call
local parse_primary_expression, parse_postfix_expression
local parse_unary_expression, parse_binary_expression
local parse_expression, parse_expression_list
local parse_variable_list, parse_block, parse_statement
local parse_function_expression

local function add_error(message, token)
    local line = token and token.line or 0
    local col = token and token.col or 0
    print("PARSER ERROR: " .. message .. " at line " .. line .. ", col " .. col)
    
    table.insert(errors, {
        message = message,
        line = line,
        col = col,
        token = token
    })
    
    return ast_nodes.createErrorNode(message, token)
end

local function recover_from_error(expected_token_type, recovery_strategy)
    recovery_strategy = recovery_strategy or "skip_to_statement"
    
    local error_msg = "Unexpected token '" .. (current_token and current_token.value or "EOF") .. 
                      "', expected " .. expected_token_type
    add_error(error_msg, current_token)
    
    if recovery_strategy == "skip_to_statement" then
        while current_token and current_token.type ~= lexer.TOKEN_TYPES.EOF and
              not (current_token.type == lexer.TOKEN_TYPES.KEYWORD and 
                  (current_token.value == "if" or 
                   current_token.value == "while" or
                   current_token.value == "for" or
                   current_token.value == "function" or
                   current_token.value == "local" or
                   current_token.value == "return" or
                   current_token.value == "break" or
                   current_token.value == "do" or
                   current_token.value == "repeat" or
                   current_token.value == "goto")) and
              not current_token.type == lexer.TOKEN_TYPES.IDENTIFIER and
              not current_token.type == lexer.TOKEN_TYPES.DOUBLE_COLON and
              not current_token.type == lexer.TOKEN_TYPES.SEMI do
            next_token()
        end
        
        while current_token and current_token.type == lexer.TOKEN_TYPES.SEMI do
            next_token()
        end
    elseif recovery_strategy == "skip_to_block_end" then
        local level = 1
        while current_token and current_token.type ~= lexer.TOKEN_TYPES.EOF do
            if current_token.type == lexer.TOKEN_TYPES.KEYWORD then
                if current_token.value == "end" or 
                   current_token.value == "else" or 
                   current_token.value == "elseif" or 
                   current_token.value == "until" then
                    level = level - 1
                    if level <= 0 then
                        break
                    end
                elseif current_token.value == "if" or 
                       current_token.value == "function" or 
                       current_token.value == "do" or
                       current_token.value == "repeat" then
                    level = level + 1
                end
            end
            next_token()
        end
    elseif recovery_strategy == "skip_to_semicolon" then
        while current_token and current_token.type ~= lexer.TOKEN_TYPES.EOF and
              current_token.type ~= lexer.TOKEN_TYPES.SEMI do
            next_token()
        end
        if current_token and current_token.type == lexer.TOKEN_TYPES.SEMI then
            next_token()
        end
    elseif recovery_strategy == "panic_mode" then
        local sync_points = {
            [lexer.TOKEN_TYPES.SEMI] = true,
            [lexer.TOKEN_TYPES.RBRACE] = true,
            [lexer.TOKEN_TYPES.RPAREN] = true
        }
        
        local keyword_sync = {
            ["end"] = true,
            ["else"] = true,
            ["elseif"] = true,
            ["until"] = true,
            ["then"] = true
        }
        
        while current_token and current_token.type ~= lexer.TOKEN_TYPES.EOF do
            if sync_points[current_token.type] or 
               (current_token.type == lexer.TOKEN_TYPES.KEYWORD and keyword_sync[current_token.value]) then
                break
            end
            next_token()
        end
    elseif recovery_strategy == "insert_missing" then
        return true
    end
    
    return false
end

local function get_token()
    return current_token
end

local function next_token()
    current_token_idx = current_token_idx + 1
    current_token = tokens[current_token_idx]
    return current_token
end

local function match(type)
    return current_token and current_token.type == type
end

local function consume(type, error_message, recovery_strategy)
    if match(type) then
        local token = current_token
        next_token()
        return token
    end

    if error_message then
        if recovery_strategy then
            recover_from_error(type, recovery_strategy)
        else
            add_error(error_message, current_token)
        end
    end
    return nil
end

local function consume_until(type)
    while current_token and not match(type) and not match(lexer.TOKEN_TYPES.EOF) do
        next_token()
    end
end

local function synchronize()
    while current_token and current_token.type ~= lexer.TOKEN_TYPES.EOF do
        if current_token.type == lexer.TOKEN_TYPES.SEMI or
           current_token.type == lexer.TOKEN_TYPES.RBRACE or
           (current_token.type == lexer.TOKEN_TYPES.KEYWORD and 
            (current_token.value == "function" or
             current_token.value == "local" or
             current_token.value == "if" or
             current_token.value == "return" or
             current_token.value == "while" or
             current_token.value == "for" or
             current_token.value == "repeat" or
             current_token.value == "end")) then
            if current_token.type == lexer.TOKEN_TYPES.SEMI then
                next_token()
            end
            break
        end
        next_token()
    end
end

local function attach_comments_to_node(node, leading_comments, trailing_comments)
    if not node then return end
    
    if not node.comments then
        node.comments = {}
    end
    
    if leading_comments and #leading_comments > 0 then
        if not node.comments.leading then
            node.comments.leading = {}
        end
        
        for _, comment in ipairs(leading_comments) do
            for i, globalComment in ipairs(comments) do
                if globalComment.line == comment.line and 
                   globalComment.col == comment.col and 
                   globalComment.value == comment.value then
                    attached_comments[i] = true
                    break
                end
            end
            
            table.insert(node.comments.leading, comment)
        end
    end
    
    if trailing_comments and #trailing_comments > 0 then
        if not node.comments.trailing then
            node.comments.trailing = {}
        end
        
        for _, comment in ipairs(trailing_comments) do
            for i, globalComment in ipairs(comments) do
                if globalComment.line == comment.line and 
                   globalComment.col == comment.col and 
                   globalComment.value == comment.value then
                    attached_comments[i] = true
                    break
                end
            end
            
            table.insert(node.comments.trailing, comment)
        end
    end
end

local function find_comments_before(token_idx)
    local result = {}
    
    for i = 1, #comments do
        local comment = comments[i]
        if not attached_comments[i] then
            local comment_pos = comment.line * 10000 + comment.col
            local token_pos = tokens[token_idx].line * 10000 + tokens[token_idx].col
            
            if comment_pos < token_pos then

                local closer_to_previous = false
                if token_idx > 1 then
                    local prev_token_pos = tokens[token_idx-1].line * 10000 + tokens[token_idx-1].col
                    local dist_to_current = token_pos - comment_pos
                    local dist_to_previous = comment_pos - prev_token_pos

                    if comment.line == tokens[token_idx-1].line and comment.line ~= tokens[token_idx].line and 
                       dist_to_previous < dist_to_current then
                        closer_to_previous = true
                    end
                end
                
                if not closer_to_previous then
                    table.insert(result, comment)
                    attached_comments[i] = true
                end
            end
        end
    end
    
    return result
end

local function find_comments_after(token_idx)
    local result = {}
    
    if token_idx >= #tokens then return result end
    
    local this_token = tokens[token_idx]
    local next_token = tokens[token_idx + 1]
    
    for i = 1, #comments do
        local comment = comments[i]
        if not attached_comments[i] then
            local comment_pos = comment.line * 10000 + comment.col
            local this_token_pos = this_token.line * 10000 + this_token.col
            local next_token_pos = next_token.line * 10000 + next_token.col
            
            if comment_pos > this_token_pos and comment_pos < next_token_pos then
                
                local dist_after_this = comment_pos - this_token_pos
                local dist_before_next = next_token_pos - comment_pos
                
                if comment.line == this_token.line or 
                   dist_after_this <= dist_before_next or 
                   (comment.line == this_token.line + 1 and next_token.line ~= comment.line) then
                    table.insert(result, comment)
                    attached_comments[i] = true
                end
            end
        end
    end
    
    return result
end

local function attach_comments(node, start_token_idx, end_token_idx)
    if not node then return end
    
    local leading_comments = find_comments_before(start_token_idx)
    local trailing_comments = find_comments_after(end_token_idx or start_token_idx)
    
    local grouped_leading = {}
    local current_group = {}
    local last_line = -1
    
    for i, comment in ipairs(leading_comments) do
        if last_line == -1 or comment.line <= last_line + 1 then
            table.insert(current_group, comment)
        else
            if #current_group > 0 then
                table.insert(grouped_leading, current_group)
            end
            current_group = {comment}
        end
        last_line = comment.line
    end
    
    if #current_group > 0 then
        table.insert(grouped_leading, current_group)
    end
    
    if #grouped_leading > 0 then
        local node_comments = {}
        for i, group in ipairs(grouped_leading) do
            local is_block_comment = false
            for _, comment in ipairs(group) do
                if comment.raw and comment.raw:match("^%-%-[%[=*%[]") then
                    is_block_comment = true
                    break
                end
            end
            
            local token_line = tokens[start_token_idx].line
            local last_comment_line = group[#group].line
            local significant_gap = token_line - last_comment_line > 1
            
            if is_block_comment or significant_gap then
                for _, comment in ipairs(group) do
                    table.insert(node_comments, comment)
                end
            end
        end
        
        if #node_comments > 0 then
            attach_comments_to_node(node, node_comments, {})
        end
    end
    
    if #trailing_comments > 0 then
        attach_comments_to_node(node, {}, trailing_comments)
    end
    
    return node
end

parse_identifier = function()
    if match(lexer.TOKEN_TYPES.IDENTIFIER) then
        local token = current_token
        next_token()
        
        local attributes = {}
        local token_start = token
        local token_end = token
        
        if match(lexer.TOKEN_TYPES.LT_SYMBOL) then
            local lt_token = current_token
            consume(lexer.TOKEN_TYPES.LT_SYMBOL)
            
            if match(lexer.TOKEN_TYPES.ATTR_CONST) then
                attributes.const = true
                consume(lexer.TOKEN_TYPES.ATTR_CONST)
            elseif match(lexer.TOKEN_TYPES.ATTR_CLOSE) then
                attributes.close = true
                consume(lexer.TOKEN_TYPES.ATTR_CLOSE)
            else
                add_error("Expected 'const' or 'close' after '<'", current_token)
            end
            
            if match(lexer.TOKEN_TYPES.GT_SYMBOL) then
                token_end = current_token
                consume(lexer.TOKEN_TYPES.GT_SYMBOL)
            else
                add_error("Expected '>' to close attribute", current_token)
            end
        end
        
        return ast_nodes.Identifier(token.value, attributes, token_start, token_end)
    end
    return nil
end

parse_literal = function()
    if match(lexer.TOKEN_TYPES.NUMBER) then
        local token = current_token
        next_token()
        return ast_nodes.NumericLiteral(token.value, token.raw)
    elseif match(lexer.TOKEN_TYPES.STRING) then
        local token = current_token
        next_token()
        return ast_nodes.StringLiteral(token.value, token.raw)
    elseif match(lexer.TOKEN_TYPES.NIL) or (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "nil") then
        next_token()
        return ast_nodes.NilLiteral()
    elseif match(lexer.TOKEN_TYPES.TRUE) or (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "true") then
        next_token()
        return ast_nodes.BooleanLiteral(true)
    elseif match(lexer.TOKEN_TYPES.FALSE) or (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "false") then
        next_token()
        return ast_nodes.BooleanLiteral(false)
    elseif match(lexer.TOKEN_TYPES.VARARG) then
        next_token()
        return ast_nodes.VarargExpression()
    end
    return nil
end

parse_table_constructor = function()
    if not match(lexer.TOKEN_TYPES.LBRACE) then
        return nil
    end
    
    consume(lexer.TOKEN_TYPES.LBRACE)
    local fields = {}
    
    while not match(lexer.TOKEN_TYPES.RBRACE) and not match(lexer.TOKEN_TYPES.EOF) do
        if match(lexer.TOKEN_TYPES.LBRACKET) then
            consume(lexer.TOKEN_TYPES.LBRACKET)
            local key = parse_expression()
            consume(lexer.TOKEN_TYPES.RBRACKET, "Expected ']' after table key expression")
            consume(lexer.TOKEN_TYPES.ASSIGN, "Expected '=' after table key")
            local value = parse_expression()
            table.insert(fields, ast_nodes.TableKey(key, value))
        elseif match(lexer.TOKEN_TYPES.IDENTIFIER) and current_token_idx + 1 <= #tokens and tokens[current_token_idx + 1].type == lexer.TOKEN_TYPES.ASSIGN then
            local key = parse_identifier()
            consume(lexer.TOKEN_TYPES.ASSIGN)
            local value = parse_expression()
            table.insert(fields, ast_nodes.TableKeyString(key, value))
        else
            local value = parse_expression()
            if value then
                table.insert(fields, ast_nodes.TableValue(value))
            else
                break
            end
        end
        
        if match(lexer.TOKEN_TYPES.COMMA) or match(lexer.TOKEN_TYPES.SEMI) then
            next_token()
        else
            break
        end
    end
    
    consume(lexer.TOKEN_TYPES.RBRACE, "Expected '}' to close table constructor")
    
    return ast_nodes.TableConstructorExpression(fields)
end

parse_function_call = function(base)
    local arguments = {}
    
    if match(lexer.TOKEN_TYPES.LPAREN) then
        consume(lexer.TOKEN_TYPES.LPAREN)
        
        if not match(lexer.TOKEN_TYPES.RPAREN) then
            while true do
                local arg = parse_expression()
                if arg then
                    table.insert(arguments, arg)
                else
                    add_error("Expected argument expression in function call", current_token)
                    break
                end
                
                if match(lexer.TOKEN_TYPES.COMMA) then
                    consume(lexer.TOKEN_TYPES.COMMA)
                else
                    break
                end
            end
        end
        
        consume(lexer.TOKEN_TYPES.RPAREN, "Expected ')' to close function call arguments")
        
        return ast_nodes.CallExpression(base, arguments)
    elseif match(lexer.TOKEN_TYPES.STRING) then
        local arg = parse_literal()
        table.insert(arguments, arg)
        return ast_nodes.CallExpression(base, arguments)
    elseif match(lexer.TOKEN_TYPES.LBRACE) then
        local arg = parse_table_constructor()
        table.insert(arguments, arg)
        return ast_nodes.CallExpression(base, arguments)
    end
    
    return nil
end

parse_method_call = function(base)
    if not match(lexer.TOKEN_TYPES.COLON) then
        return nil
    end
    
    consume(lexer.TOKEN_TYPES.COLON)
    local method = parse_identifier()
    if not method then
        add_error("Expected method name after ':'", current_token)
        return nil
    end
    
    local arguments = {}
    
    if match(lexer.TOKEN_TYPES.LPAREN) then
        consume(lexer.TOKEN_TYPES.LPAREN)
        
        if not match(lexer.TOKEN_TYPES.RPAREN) then
            while true do
                local arg = parse_expression()
                if arg then
                    table.insert(arguments, arg)
                else
                    add_error("Expected argument expression in method call", current_token)
                    break
                end
                
                if match(lexer.TOKEN_TYPES.COMMA) then
                    consume(lexer.TOKEN_TYPES.COMMA)
                else
                    break
                end
            end
        end
        
        consume(lexer.TOKEN_TYPES.RPAREN, "Expected ')' to close method call arguments")
    elseif match(lexer.TOKEN_TYPES.STRING) then
        local arg = parse_literal()
        table.insert(arguments, arg)
    elseif match(lexer.TOKEN_TYPES.LBRACE) then
        local arg = parse_table_constructor()
        table.insert(arguments, arg)
    else
        add_error("Expected arguments after method name", current_token)
        return nil
    end
    
    return ast_nodes.MethodCallExpression(base, method, arguments)
end

parse_member_expression = function(base)
    if match(lexer.TOKEN_TYPES.DOT) then
        consume(lexer.TOKEN_TYPES.DOT)
        local identifier = parse_identifier()
        if not identifier then
            add_error("Expected identifier after '.'", current_token)
            return nil
        end
        return ast_nodes.MemberExpression(base, '.', identifier)
    elseif match(lexer.TOKEN_TYPES.LBRACKET) then
        consume(lexer.TOKEN_TYPES.LBRACKET)
        local index = parse_expression()
        if not index then
            add_error("Expected expression inside '[]'", current_token)
            return nil
        end
        consume(lexer.TOKEN_TYPES.RBRACKET, "Expected ']' after index expression")
        return ast_nodes.IndexExpression(base, index)
    end
    
    return nil
end

parse_primary_expression = function()
    if match(lexer.TOKEN_TYPES.LPAREN) then
        consume(lexer.TOKEN_TYPES.LPAREN)
        local expr = parse_expression()
        consume(lexer.TOKEN_TYPES.RPAREN, "Expected ')' to close grouped expression")
        return expr
    end
    
    if match(lexer.TOKEN_TYPES.IDENTIFIER) then
        return parse_identifier()
    end
    
    if match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "function" then
        return parse_function_expression()
    end
    
    return parse_literal() or parse_table_constructor()
end

parse_postfix_expression = function()
    local expr = parse_primary_expression()
    
    if not expr then
        return nil
    end
    
    while true do
        local new_expr = parse_function_call(expr) or parse_method_call(expr) or parse_member_expression(expr)
        
        if not new_expr then
            break
        end
        
        expr = new_expr
    end
    
    return expr
end

parse_unary_expression = function()
    if match(lexer.TOKEN_TYPES.SUB) or 
       (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "not") or
       match(lexer.TOKEN_TYPES.LEN) or
       match(lexer.TOKEN_TYPES.BXOR) then
        
        local operator
        local token = current_token
        
        if match(lexer.TOKEN_TYPES.SUB) then
            operator = "-"
            consume(lexer.TOKEN_TYPES.SUB)
        elseif match(lexer.TOKEN_TYPES.KEYWORD) then
            operator = "not"
            consume(lexer.TOKEN_TYPES.KEYWORD)
        elseif match(lexer.TOKEN_TYPES.LEN) then
            operator = "#"
            consume(lexer.TOKEN_TYPES.LEN)
        elseif match(lexer.TOKEN_TYPES.BXOR) then
            operator = "~"
            consume(lexer.TOKEN_TYPES.BXOR)
        end
        
        local argument = parse_postfix_expression()
        if not argument then
            if match(lexer.TOKEN_TYPES.STRING) or match(lexer.TOKEN_TYPES.NUMBER) or 
               match(lexer.TOKEN_TYPES.TRUE) or match(lexer.TOKEN_TYPES.FALSE) or 
               match(lexer.TOKEN_TYPES.NIL) or match(lexer.TOKEN_TYPES.IDENTIFIER) then
                argument = parse_primary_expression()
            else
                add_error("Expected expression after unary operator '" .. operator .. "'", token)
                
                if match(lexer.TOKEN_TYPES.IDENTIFIER) then
                    argument = parse_identifier()
                elseif match(lexer.TOKEN_TYPES.LPAREN) then
                    consume(lexer.TOKEN_TYPES.LPAREN)
                    argument = parse_expression()
                    consume(lexer.TOKEN_TYPES.RPAREN)
                else
                    argument = ast_nodes.LiteralExpression(0, "0")
                    next_token()
                end
            end
        end
        
        return ast_nodes.UnaryExpression(operator, argument, token)
    end
    
    return parse_postfix_expression()
end

local BINARY_OPS = {
    ['^'] = { precedence = 12, right_associative = true },
    ['*'] = { precedence = 10 },
    ['/'] = { precedence = 10 },
    ['//'] = { precedence = 10 },
    ['%'] = { precedence = 10 },
    ['+'] = { precedence = 9 },
    ['-'] = { precedence = 9 },
    ['..'] = { precedence = 8, right_associative = true },
    ['<<'] = { precedence = 7 },
    ['>>'] = { precedence = 7 },
    ['&'] = { precedence = 6 },
    ['~'] = { precedence = 5 }, 
    ['|'] = { precedence = 4 },
    ['<'] = { precedence = 3 },
    ['<='] = { precedence = 3 },
    ['>'] = { precedence = 3 },
    ['>='] = { precedence = 3 },
    ['=='] = { precedence = 3 },
    ['~='] = { precedence = 3 },
    ['and'] = { precedence = 2 },
    ['or'] = { precedence = 1 }
}

parse_binary_expression = function(min_precedence)
    min_precedence = min_precedence or 0
    
    local left = parse_unary_expression()
    if not left then
        return nil
    end
    
    while true do
        local op = nil
        local current_token_type = current_token and current_token.type or ""
        
        if match(lexer.TOKEN_TYPES.ADD) then
            op = '+'
        elseif match(lexer.TOKEN_TYPES.SUB) then
            op = '-'
        elseif match(lexer.TOKEN_TYPES.MUL) then
            op = '*'
        elseif match(lexer.TOKEN_TYPES.DIV) then
            op = '/'
        elseif match(lexer.TOKEN_TYPES.IDIV) then
            op = '//'
        elseif match(lexer.TOKEN_TYPES.MOD) then
            op = '%'
        elseif match(lexer.TOKEN_TYPES.POW) then
            op = '^'
        elseif match(lexer.TOKEN_TYPES.BAND) then
            op = '&'
        elseif match(lexer.TOKEN_TYPES.BOR) then
            op = '|'
        elseif match(lexer.TOKEN_TYPES.BXOR) then
            op = '~'
        elseif match(lexer.TOKEN_TYPES.SHL) then
            op = '<<'
        elseif match(lexer.TOKEN_TYPES.SHR) then
            op = '>>'
        elseif match(lexer.TOKEN_TYPES.CONCAT) then
            op = '..'
        elseif match(lexer.TOKEN_TYPES.LT) then
            op = '<'
        elseif match(lexer.TOKEN_TYPES.LE) then
            op = '<='
        elseif match(lexer.TOKEN_TYPES.GT) then
            op = '>'
        elseif match(lexer.TOKEN_TYPES.GE) then
            op = '>='
        elseif match(lexer.TOKEN_TYPES.EQ) then
            op = '=='
        elseif match(lexer.TOKEN_TYPES.NE) then
            op = '~='
        elseif match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "and" then
            op = 'and'
        elseif match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "or" then
            op = 'or'
        end
        
        if not op or not BINARY_OPS[op] or BINARY_OPS[op].precedence < min_precedence then
            break
        end
        
        local op_token = current_token
        next_token()
        
        local next_min_precedence = BINARY_OPS[op].precedence
        if not BINARY_OPS[op].right_associative then
            next_min_precedence = next_min_precedence + 1
        end
        
        local right = parse_binary_expression(next_min_precedence)
        if not right then
            add_error("Expected expression after operator '" .. op .. "'", op_token)
            
            right = ast_nodes.createErrorNode("Missing right operand", op_token)
        end
        
        local binary_expr = ast_nodes.BinaryExpression(op, left, right)
        
        if op == '&' or op == '|' or op == '~' or op == '<<' or op == '>>' or op == '//' then
            binary_expr.lua53_feature = true
        end
        
        left = binary_expr
    end
    
    return left
end

parse_expression = function()
    return parse_binary_expression()
end

parse_expression_list = function()
    local expressions = {}
    
    while true do
        local expr = parse_expression()
        if not expr then
            add_error("Expected expression", current_token)
            break
        end
        
        table.insert(expressions, expr)
        
        if match(lexer.TOKEN_TYPES.COMMA) then
            consume(lexer.TOKEN_TYPES.COMMA)
        else
            break
        end
    end
    
    return expressions
end

parse_variable_list = function()
    local variables = {}
    
    while true do
        local var = parse_identifier()
        if not var then
            add_error("Expected variable name", current_token)
            break
        end
        
        table.insert(variables, var)
        
        if match(lexer.TOKEN_TYPES.COMMA) then
            consume(lexer.TOKEN_TYPES.COMMA)
        else
            break
        end
    end
    
    return variables
end

local parse_if_statement, parse_while_statement, parse_repeat_statement
local parse_for_statement, parse_do_statement, parse_function_declaration
local parse_local_function_declaration, parse_local_statement
local parse_return_statement, parse_break_statement
local parse_goto_statement, parse_label_statement
local parse_assignment_or_call

parse_if_statement = function()
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "if") then
        return nil
    end
    
    local start_token_idx = current_token_idx
    consume(lexer.TOKEN_TYPES.KEYWORD) 
    
    local clauses = {}
    local condition = parse_expression()
    
    if not condition then
        add_error("Expected condition after 'if'", current_token)
        return nil
    end
    
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "then") then
        add_error("Expected 'then' after if condition", current_token)
    else
        consume(lexer.TOKEN_TYPES.KEYWORD) 
    end
    
    local body = parse_block()
    table.insert(clauses, ast_nodes.IfClause(condition, body))
    
    while match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "elseif" do
        consume(lexer.TOKEN_TYPES.KEYWORD)
        
        local elseif_condition = parse_expression()
        if not elseif_condition then
            add_error("Expected condition after 'elseif'", current_token)
            break
        end
        
        if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "then") then
            add_error("Expected 'then' after elseif condition", current_token)
        else
            consume(lexer.TOKEN_TYPES.KEYWORD)
        end
        
        local elseif_body = parse_block()
        table.insert(clauses, ast_nodes.IfClause(elseif_condition, elseif_body))
    end
    
    if match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "else" then
        consume(lexer.TOKEN_TYPES.KEYWORD)
        
        local else_body = parse_block()
        table.insert(clauses, ast_nodes.ElseClause(else_body))
    end
    
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "end") then
        add_error("Expected 'end' to close if statement", current_token)
    else
        consume(lexer.TOKEN_TYPES.KEYWORD)
    end
    
    local end_token_idx = current_token_idx - 1
    local node = ast_nodes.IfStatement(clauses)
    return attach_comments(node, start_token_idx, end_token_idx)
end

parse_while_statement = function()
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "while") then
        return nil
    end
    
    consume(lexer.TOKEN_TYPES.KEYWORD) 
    
    local condition = parse_expression()
    if not condition then
        add_error("Expected condition after 'while'", current_token)
        return nil
    end
    
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "do") then
        add_error("Expected 'do' after while condition", current_token)
    else
        consume(lexer.TOKEN_TYPES.KEYWORD) 
    end
    
    local body = parse_block()
    
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "end") then
        add_error("Expected 'end' to close while statement", current_token)
    else
        consume(lexer.TOKEN_TYPES.KEYWORD) 
    end
    
    return ast_nodes.WhileStatement(condition, body)
end

parse_repeat_statement = function()
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "repeat") then
        return nil
    end
    
    consume(lexer.TOKEN_TYPES.KEYWORD) 
    
    local body = parse_block()
    
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "until") then
        add_error("Expected 'until' after repeat body", current_token)
    else
        consume(lexer.TOKEN_TYPES.KEYWORD) 
    end
    
    local condition = parse_expression()
    if not condition then
        add_error("Expected condition after 'until'", current_token)
        return nil
    end
    
    return ast_nodes.RepeatStatement(condition, body)
end

parse_for_statement = function()
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "for") then
        return nil
    end
    
    consume(lexer.TOKEN_TYPES.KEYWORD)
    
    if match(lexer.TOKEN_TYPES.IDENTIFIER) then
        local variable = parse_identifier()
        
        if match(lexer.TOKEN_TYPES.ASSIGN) then
            consume(lexer.TOKEN_TYPES.ASSIGN)
            
            local start = parse_expression()
            if not start then
                add_error("Expected start expression in for loop", current_token)
                return nil
            end
            
            if not match(lexer.TOKEN_TYPES.COMMA) then
                add_error("Expected ',' after start expression in for loop", current_token)
            else
                consume(lexer.TOKEN_TYPES.COMMA)
            end
            
            local stop = parse_expression()
            if not stop then
                add_error("Expected stop expression in for loop", current_token)
                return nil
            end
            
            local step = nil
            if match(lexer.TOKEN_TYPES.COMMA) then
                consume(lexer.TOKEN_TYPES.COMMA)
                
                step = parse_expression()
                if not step then
                    add_error("Expected step expression after comma in for loop", current_token)
                    return nil
                end
            end
            
            if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "do") then
                add_error("Expected 'do' after for loop parameters", current_token)
            else
                consume(lexer.TOKEN_TYPES.KEYWORD)
            end
            
            local body = parse_block()
            
            if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "end") then
                add_error("Expected 'end' to close for loop", current_token)
            else
                consume(lexer.TOKEN_TYPES.KEYWORD)
            end
            
            return ast_nodes.ForNumericStatement(variable, start, stop, step, body)
        else
            local variables = { variable }
            
            while match(lexer.TOKEN_TYPES.COMMA) do
                consume(lexer.TOKEN_TYPES.COMMA)
                
                local var = parse_identifier()
                if not var then
                    add_error("Expected variable name after ',' in for loop", current_token)
                    break
                end
                
                table.insert(variables, var)
            end
            
            if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "in") then
                add_error("Expected 'in' after variable list in for loop", current_token)
            else
                consume(lexer.TOKEN_TYPES.KEYWORD)
            end
            
            local iterators = parse_expression_list()
            
            if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "do") then
                add_error("Expected 'do' after for loop parameters", current_token)
            else
                consume(lexer.TOKEN_TYPES.KEYWORD)
            end
            
            local body = parse_block()
            
            if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "end") then
                add_error("Expected 'end' to close for loop", current_token)
            else
                consume(lexer.TOKEN_TYPES.KEYWORD)
            end
            
            return ast_nodes.ForGenericStatement(variables, iterators, body)
        end
    else
        add_error("Expected variable name after 'for'", current_token)
        return nil
    end
end

parse_do_statement = function()
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "do") then
        return nil
    end
    
    consume(lexer.TOKEN_TYPES.KEYWORD)
    
    local body = parse_block()
    
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "end") then
        add_error("Expected 'end' to close do block", current_token)
    else
        consume(lexer.TOKEN_TYPES.KEYWORD) 
    end
    
    return ast_nodes.DoStatement(body)
end

parse_function_declaration = function()
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "function") then
        return nil
    end
    
    local start_token_idx = current_token_idx
    local token_start = current_token
    consume(lexer.TOKEN_TYPES.KEYWORD) 
    
    local isLocal = false
    local identifier = nil
    
    identifier = parse_identifier()
    if not identifier then
        add_error("Expected function name", current_token)
        return nil
    end
    
    local base = identifier
    local method = nil
    
    while match(lexer.TOKEN_TYPES.DOT) or match(lexer.TOKEN_TYPES.COLON) do
        if match(lexer.TOKEN_TYPES.DOT) then
            consume(lexer.TOKEN_TYPES.DOT)
            
            local field = parse_identifier()
            if not field then
                add_error("Expected field name after '.'", current_token)
                break
            end
            
            base = ast_nodes.MemberExpression(base, '.', field)
        else
            consume(lexer.TOKEN_TYPES.COLON)
            
            method = parse_identifier()
            if not method then
                add_error("Expected method name after ':'", current_token)
                break
            end
            
            break
        end
    end
    
    local parameters = {}
    
    if not match(lexer.TOKEN_TYPES.LPAREN) then
        add_error("Expected '(' after function name", current_token)
    else
        consume(lexer.TOKEN_TYPES.LPAREN)
    end
    
    if not match(lexer.TOKEN_TYPES.RPAREN) then
        if method then
            table.insert(parameters, ast_nodes.Identifier("self"))
        end
        
        if not match(lexer.TOKEN_TYPES.RPAREN) then 
            while true do
                if match(lexer.TOKEN_TYPES.VARARG) then
                    table.insert(parameters, ast_nodes.VarargExpression())
                    consume(lexer.TOKEN_TYPES.VARARG)
                    break
                elseif match(lexer.TOKEN_TYPES.IDENTIFIER) then
                    table.insert(parameters, parse_identifier())
                else
                    add_error("Expected parameter name or '...'", current_token)
                    break
                end
                
                if match(lexer.TOKEN_TYPES.COMMA) then
                    consume(lexer.TOKEN_TYPES.COMMA)
                else
                    break
                end
            end
        end
    end
    
    consume(lexer.TOKEN_TYPES.RPAREN, "Expected ')' after parameter list")
    
    local body = parse_block()
    
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "end") then
        add_error("Expected 'end' to close function body", current_token)
    else
        consume(lexer.TOKEN_TYPES.KEYWORD)
    end
    
    local end_token_idx = current_token_idx - 1
    local node = ast_nodes.FunctionDeclaration(base, parameters, body, isLocal, token_start, current_token)
    return attach_comments(node, start_token_idx, end_token_idx)
end

parse_local_function_declaration = function()
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "local") then
        return nil
    end
    
    consume(lexer.TOKEN_TYPES.KEYWORD) 
    
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "function") then
        
        current_token_idx = current_token_idx - 1
        current_token = tokens[current_token_idx]
        return nil
    end
    
    consume(lexer.TOKEN_TYPES.KEYWORD) 
    
    local identifier = parse_identifier()
    if not identifier then
        add_error("Expected function name after 'local function'", current_token)
        return nil
    end
    
    local parameters = {}
    
    if not match(lexer.TOKEN_TYPES.LPAREN) then
        add_error("Expected '(' after function name", current_token)
    else
        consume(lexer.TOKEN_TYPES.LPAREN)
    end
    
    if not match(lexer.TOKEN_TYPES.RPAREN) then
        while true do
            if match(lexer.TOKEN_TYPES.VARARG) then
                table.insert(parameters, ast_nodes.VarargExpression())
                consume(lexer.TOKEN_TYPES.VARARG)
                break
            elseif match(lexer.TOKEN_TYPES.IDENTIFIER) then
                table.insert(parameters, parse_identifier())
            else
                add_error("Expected parameter name or '...'", current_token)
                break
            end
            
            if match(lexer.TOKEN_TYPES.COMMA) then
                consume(lexer.TOKEN_TYPES.COMMA)
            else
                break
            end
        end
    end
    
    consume(lexer.TOKEN_TYPES.RPAREN, "Expected ')' after parameter list")
    
    local body = parse_block()
    
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "end") then
        add_error("Expected 'end' to close function body", current_token)
    else
        consume(lexer.TOKEN_TYPES.KEYWORD)
    end
    
    return ast_nodes.FunctionDeclaration(identifier, parameters, body, true)
end

parse_local_statement = function()
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "local") then
        return nil
    end
    
    local token_start = current_token
    local start_token_idx = current_token_idx
    consume(lexer.TOKEN_TYPES.KEYWORD)
    
    if match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "function" then
        current_token_idx = current_token_idx - 1 
        current_token = tokens[current_token_idx]
        return parse_local_function_declaration()
    end
    
    local variables = parse_variable_list()
    local init = {}
    
    local has_attributes = false
    for _, var in ipairs(variables) do
        if var.attributes and (var.attributes.const or var.attributes.close) then
            has_attributes = true
            break
        end
    end
    
    if match(lexer.TOKEN_TYPES.ASSIGN) then
        consume(lexer.TOKEN_TYPES.ASSIGN)
        init = parse_expression_list()
    elseif has_attributes then
        for _, var in ipairs(variables) do
            if var.attributes and var.attributes.const then
                add_error("<const> variables must be initialized", current_token)
                break
            end
        end
    end
    
    local end_token_idx = current_token_idx
    local node = ast_nodes.LocalStatement(variables, init, token_start, current_token)
    return attach_comments(node, start_token_idx, end_token_idx)
end

parse_return_statement = function()
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "return") then
        return nil
    end
    
    consume(lexer.TOKEN_TYPES.KEYWORD)
    
    local arguments = {}
    
    if not match(lexer.TOKEN_TYPES.EOF) and
       not match(lexer.TOKEN_TYPES.SEMI) and
       not (match(lexer.TOKEN_TYPES.KEYWORD) and 
            (current_token.value == "end" or
             current_token.value == "else" or
             current_token.value == "elseif" or
             current_token.value == "until")) then
        arguments = parse_expression_list()
    end
    
    if match(lexer.TOKEN_TYPES.SEMI) then
        consume(lexer.TOKEN_TYPES.SEMI)
    end
    
    return ast_nodes.ReturnStatement(arguments)
end

parse_break_statement = function()
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "break") then
        return nil
    end
    
    consume(lexer.TOKEN_TYPES.KEYWORD)
    
    if match(lexer.TOKEN_TYPES.SEMI) then
        consume(lexer.TOKEN_TYPES.SEMI)
    end
    
    return ast_nodes.BreakStatement()
end

parse_goto_statement = function()
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "goto") then
        return nil
    end
    
    consume(lexer.TOKEN_TYPES.KEYWORD)
    
    local label = parse_identifier()
    if not label then
        add_error("Expected label name after 'goto'", current_token)
        return nil
    end
    
    return ast_nodes.GotoStatement(label)
end

parse_label_statement = function()
    if not match(lexer.TOKEN_TYPES.DOUBLE_COLON) then
        return nil
    end
    
    consume(lexer.TOKEN_TYPES.DOUBLE_COLON)
    
    local label = parse_identifier()
    if not label then
        add_error("Expected label name between '::' delimiters", current_token)
        return nil
    end
    
    if not match(lexer.TOKEN_TYPES.DOUBLE_COLON) then
        add_error("Expected '::' after label name", current_token)
    else
        consume(lexer.TOKEN_TYPES.DOUBLE_COLON)
    end
    
    return ast_nodes.LabelStatement(label)
end

parse_assignment_or_call = function()
    local start_idx = current_token_idx
    local expr = parse_expression()
    
    if not expr then
        return nil
    end
    
    if match(lexer.TOKEN_TYPES.ASSIGN) then
        local variables = { expr }
        
        while match(lexer.TOKEN_TYPES.COMMA) do
            consume(lexer.TOKEN_TYPES.COMMA)
            
            local var = parse_expression()
            if not var then
                add_error("Expected variable after ','", current_token)
                break
            end
            
            table.insert(variables, var)
        end
        
        consume(lexer.TOKEN_TYPES.ASSIGN, "Expected '=' after variable list")
        
        local init = parse_expression_list()
        
        return ast_nodes.AssignmentStatement(variables, init)
    end
    
    if expr.type == "CallExpression" or expr.type == "MethodCallExpression" then
        return ast_nodes.CallStatement(expr)
    end
    
    add_error("Expected assignment or function call", tokens[start_idx])
    return nil
end

parse_statement = function()
    return parse_if_statement() or
           parse_while_statement() or
           parse_repeat_statement() or
           parse_for_statement() or
           parse_do_statement() or
           parse_function_declaration() or
           parse_local_statement() or
           parse_return_statement() or
           parse_break_statement() or
           parse_goto_statement() or
           parse_label_statement() or
           parse_assignment_or_call()
end

parse_function_expression = function()
    if match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "function" then
        consume(lexer.TOKEN_TYPES.KEYWORD)
        
        local parameters = {}
        
        consume(lexer.TOKEN_TYPES.LPAREN, "Expected '(' after 'function'")
        
        if not match(lexer.TOKEN_TYPES.RPAREN) then
            while true do
                if match(lexer.TOKEN_TYPES.VARARG) then
                    table.insert(parameters, ast_nodes.VarargExpression())
                    consume(lexer.TOKEN_TYPES.VARARG)
                    break
                elseif match(lexer.TOKEN_TYPES.IDENTIFIER) then
                    table.insert(parameters, parse_identifier())
                else
                    if not match(lexer.TOKEN_TYPES.RPAREN) then
                        add_error("Expected parameter name or '...'", current_token)
                    end
                    break
                end
                
                if match(lexer.TOKEN_TYPES.COMMA) then
                    consume(lexer.TOKEN_TYPES.COMMA)
                else
                    break
                end
            end
        end
        
        consume(lexer.TOKEN_TYPES.RPAREN, "Expected ')' after parameter list")
        
        local body = parse_block()
        
        if not match(lexer.TOKEN_TYPES.KEYWORD) or current_token.value ~= "end" then
            add_error("Expected 'end' to close function body", current_token)
        else
            consume(lexer.TOKEN_TYPES.KEYWORD)
        end
        
        return ast_nodes.FunctionExpression(parameters, body)
    end
    
    return nil
end

parse_block = function()
    local statements = {}
    
    while current_token and current_token.type ~= lexer.TOKEN_TYPES.EOF do
        if match(lexer.TOKEN_TYPES.KEYWORD) and 
           (current_token.value == "end" or 
            current_token.value == "else" or 
            current_token.value == "elseif" or 
            current_token.value == "until") then
            break
        end
        
        local statement = parse_statement()
        if statement then
            table.insert(statements, statement)
        else
            if match(lexer.TOKEN_TYPES.SEMI) then
                consume(lexer.TOKEN_TYPES.SEMI)
            else
                if current_token and current_token.type ~= lexer.TOKEN_TYPES.EOF then
                    add_error("Unexpected token in block", current_token)
                    next_token()
                else
                    break
                end
            end
        end
        
        if match(lexer.TOKEN_TYPES.SEMI) then
            consume(lexer.TOKEN_TYPES.SEMI)
        end
    end
    
    return statements
end

function parser.parse(code)
    tokens, comments = lexer.tokenize(code)
    current_token_idx = 1
    current_token = tokens[1]
    errors = {}
    attached_comments = {}
    
    local has_shebang = false
    if current_token and current_token.type == lexer.TOKEN_TYPES.SHEBANG then
        has_shebang = true
        next_token()
    end
    
    local file_level_comments = {}
    local first_code_line = tokens[current_token_idx] and tokens[current_token_idx].line
    
    for i, comment in ipairs(comments) do
        if (i == 1) or
           (first_code_line and comment.line < first_code_line)
        then
            table.insert(file_level_comments, comment)
            attached_comments[i] = true
        end
    end
    
    local body = parse_block()
    
    local unattached_comments = {}
    for i, comment in ipairs(comments) do
        if not attached_comments[i] then
            table.insert(unattached_comments, comment)
        end
    end
    
    local ast = ast_nodes.Chunk(body, {})
    
    if #file_level_comments > 0 then
        ast.comments = file_level_comments
    end
    
    table.sort(unattached_comments, function(a, b)
        return (a.line * 10000 + a.col) < (b.line * 10000 + b.col)
    end)
    
    if #unattached_comments > 0 and #body > 0 then
        local first_stmt = body[1]
        local first_stmt_loc = first_stmt.loc and first_stmt.loc.start
        local leading_comments = {}
        
        local i = 1
        while i <= #unattached_comments do
            local comment = unattached_comments[i]
            if first_stmt_loc and comment.line < first_stmt_loc.line then
                table.insert(leading_comments, comment)
                table.remove(unattached_comments, i)
            else
                i = i + 1
            end
        end
        
        if #leading_comments > 0 then
            if not first_stmt.comments then first_stmt.comments = {} end
            if not first_stmt.comments.leading then first_stmt.comments.leading = {} end
            for _, comment in ipairs(leading_comments) do
                table.insert(first_stmt.comments.leading, comment)
            end
        end
        
        for i = 1, #body do
            local stmt = body[i]
            local next_stmt = body[i+1]
            local stmt_end_loc = stmt.loc and stmt.loc["end"]
            local next_stmt_start_loc = next_stmt and next_stmt.loc and next_stmt.loc.start
            
            if stmt_end_loc then
                local stmt_trailing = {}
                local j = 1
                while j <= #unattached_comments do
                    local comment = unattached_comments[j]
                    local comment_pos = comment.line * 10000 + comment.col
                    local stmt_end_pos = stmt_end_loc.line * 10000 + stmt_end_loc.col
                    
                    if comment_pos > stmt_end_pos and 
                       (not next_stmt_start_loc or 
                        comment.line < next_stmt_start_loc.line or
                        (comment.line == next_stmt_start_loc.line and comment.col < next_stmt_start_loc.col)) then
                        table.insert(stmt_trailing, comment)
                        table.remove(unattached_comments, j)
                    else
                        j = j + 1
                    end
                end
                
                if #stmt_trailing > 0 then
                    if not stmt.comments then stmt.comments = {} end
                    if not stmt.comments.trailing then stmt.comments.trailing = {} end
                    for _, comment in ipairs(stmt_trailing) do
                        table.insert(stmt.comments.trailing, comment)
                    end
                end
            end
        end
    end
    
    if #unattached_comments > 0 then
        if not ast.comments then ast.comments = {} end
        for _, comment in ipairs(unattached_comments) do
            table.insert(ast.comments, comment)
        end
    end
    
    return ast, errors
end

return parser
