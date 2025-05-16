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

local parse_expression, parse_statement

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

local function parse_identifier()
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

local function parse_literal()
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

local function parse_table_constructor()
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

local function parse_function_call(base)
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

local function parse_method_call(base)
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

local function parse_primary_expression()
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

local function parse_function_expression()
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "function") then
        return nil
    end
    
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
    
    if match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "end" then
        consume(lexer.TOKEN_TYPES.KEYWORD)
    else
        add_error("Expected 'end' to close function body", current_token)
    end
    
    return ast_nodes.FunctionExpression(parameters, body)
end

local function parse_member_expression(base)
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

local function parse_postfix_expression()
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

local function parse_unary_expression()
    if match(lexer.TOKEN_TYPES.SUB) or 
       (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "not") or
       match(lexer.TOKEN_TYPES.LEN) or
       match(lexer.TOKEN_TYPES.BXOR) then
        
        local operator
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
        
        local argument = parse_unary_expression()
        if not argument then
            add_error("Expected expression after unary operator '" .. operator .. "'", current_token)
            return nil
        end
        
        return ast_nodes.UnaryExpression(operator, argument)
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

local function parse_binary_expression(min_precedence)
    min_precedence = min_precedence or 0
    
    local left = parse_unary_expression()
    if not left then
        return nil
    end
    
    while true do
        local op = nil
        
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
        
        next_token()
        
        local next_min_precedence = BINARY_OPS[op].precedence
        if not BINARY_OPS[op].right_associative then
            next_min_precedence = next_min_precedence + 1
        end
        
        local right = parse_binary_expression(next_min_precedence)
        if not right then
            add_error("Expected expression after operator '" .. op .. "'", current_token)
            break
        end
        
        left = ast_nodes.BinaryExpression(op, left, right)
    end
    
    return left
end

parse_expression = function()
    return parse_binary_expression()
end

local function parse_block()
    local statements = {}
    local had_error = false
    
    while not match(lexer.TOKEN_TYPES.EOF) and
          not (match(lexer.TOKEN_TYPES.KEYWORD) and 
               (current_token.value == "end" or
                current_token.value == "else" or
                current_token.value == "elseif" or
                current_token.value == "until")) do
        
        local stmt = parse_statement()
        if stmt then
            if stmt.isError then
                had_error = true
                synchronize()
            else
                table.insert(statements, stmt)
            end
        else
            if current_token and current_token.type ~= lexer.TOKEN_TYPES.EOF then
                had_error = true
                add_error("Unexpected token in block", current_token)
                synchronize()
            else
                break
            end
        end
    end
    
    return statements
end

local function parse_variable_list()
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

local function parse_expression_list()
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

local function parse_if_statement()
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "if") then
        return nil
    end
    
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
    
    return ast_nodes.IfStatement(clauses)
end

local function parse_while_statement()
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

local function parse_repeat_statement()
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

local function parse_for_statement()
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

local function parse_do_statement()
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

local function parse_function_declaration()
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "function") then
        return nil
    end
    
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
    
    return ast_nodes.FunctionDeclaration(base, parameters, body, isLocal)
end

local function parse_local_function_declaration()
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

local function parse_local_statement()
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "local") then
        return nil
    end
    
    local token_start = current_token
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
    
    return ast_nodes.LocalStatement(variables, init, token_start, current_token)
end

local function parse_return_statement()
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

local function parse_break_statement()
    if not (match(lexer.TOKEN_TYPES.KEYWORD) and current_token.value == "break") then
        return nil
    end
    
    consume(lexer.TOKEN_TYPES.KEYWORD)
    
    if match(lexer.TOKEN_TYPES.SEMI) then
        consume(lexer.TOKEN_TYPES.SEMI)
    end
    
    return ast_nodes.BreakStatement()
end

local function parse_goto_statement()
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

local function parse_label_statement()
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

local function parse_assignment_or_call()
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

function parser.parse(code)

    tokens = lexer.tokenize(code)
    current_token_idx = 1
    current_token = tokens[1]
    errors = {}
    
    local body = parse_block()
    
    local ast = ast_nodes.Chunk(body)
    
    return ast, errors
end

return parser
