--[[

    Dev : NexusScripts

]]

local ast_nodes = require("ast_custom.ast_nodes")
local lexer = require("ast_custom.lexer")
local parser = require("ast_custom.parser")

local formatter = {}

formatter.DEFAULT_CONFIG = {
    indent = {
        use_tabs = false,
        size = 4,
    },
    line_breaks = {
        before_blocks = true,
        after_statements = true,
        max_line_length = 100,
    },
    spaces = {
        around_operators = true,
        after_commas = true,
        inside_parentheses = false,
        inside_braces = true,
        inside_brackets = false,
    },
    alignment = {
        function_parameters = false,
        table_fields = false,
    },
    comments = {
        preserve_license = true,
        preserve_special = true, -- Comments starting with --! or --[[!]]
        preserve_doc = true,     -- Comments starting with --- or --[[DOC]]
        remove_single_only = false,
        remove_multi_only = false,
    },
    minify = {
        remove_whitespace = true,
        join_consecutive_statements = true,
        compress_tokens = true,
        shorten_identifiers = false,
    },
}

function formatter.create(config)
    local fmt = {}
    fmt.config = config or formatter.DEFAULT_CONFIG
    
    for k, v in pairs(formatter.DEFAULT_CONFIG) do
        if fmt.config[k] == nil then
            fmt.config[k] = v
        elseif type(v) == "table" then
            for k2, v2 in pairs(v) do
                if fmt.config[k][k2] == nil then
                    fmt.config[k][k2] = v2
                end
            end
        end
    end
    
    return fmt
end

local function generate_indent(level, config)
    local indent_str
    if config.indent.use_tabs then
        indent_str = string.rep("\t", level)
    else
        indent_str = string.rep(" ", level * config.indent.size)
    end
    return indent_str
end

local function format_beautified(ast, fmt, source_code)
    local result = ""
    local indent_level = 0
    
    local current_line_length = 0
    local function add_to_output(text, newline)
        result = result .. text
        if newline then
            current_line_length = 0
        else
            current_line_length = current_line_length + #text
        end
    end
    
    local visitor = {}
    
    visitor.visit = function(node)
        if not node then
            return
        end
        
        if visitor[node.type] then
            return visitor[node.type](node)
        else
            print("Warning: No visitor for node type " .. (node.type or "nil"))
            return ""
        end
    end
    
    local function format_operator(op)
        if fmt.config.spaces.around_operators then
            return " " .. op .. " "
        else
            return op
        end
    end
    
    local function add_newline_with_indent()
        add_to_output("\n" .. generate_indent(indent_level, fmt.config), true)
    end
    
    local function add_comma()
        if node and node.type == "CallExpression" then
            add_to_output(",")
            if fmt.config.spaces.after_commas or true then
                add_to_output(" ")
            end
        else
            add_to_output(",")
            if fmt.config.spaces.after_commas then
                add_to_output(" ")
            end
        end
    end
    
    local function process_comments_at_location(node, location)
        if node.comments and node.comments[location] then
            if fmt.config.comments.preserve_license == false and 
               fmt.config.comments.preserve_special == false and 
               fmt.config.comments.preserve_doc == false then
                return
            end
            
            for _, comment in ipairs(node.comments[location]) do
                local should_preserve = true
                
                if fmt.config.comments.remove_single_only and comment.isMultiline then
                    should_preserve = true
                elseif fmt.config.comments.remove_multi_only and not comment.isMultiline then
                    should_preserve = true
                else
                    should_preserve = (fmt.config.comments.preserve_license and 
                                     (comment.value:lower():find("license") or 
                                      comment.value:lower():find("copyright"))) or
                                    (fmt.config.comments.preserve_special and 
                                     (comment.value:sub(1, 1) == "!" or 
                                      (comment.isMultiline and comment.value:sub(1, 1) == "!"))) or
                                    (fmt.config.comments.preserve_doc and 
                                     (comment.value:sub(1, 1) == "-" or 
                                      (comment.isMultiline and comment.value:sub(1, 3) == "DOC")))
                end
                
                if should_preserve then
                    if comment.isMultiline then
                        add_to_output("--[[" .. comment.value .. "]]", false)
                    else
                        add_to_output("--" .. comment.value, false)
                    end
                    add_newline_with_indent()
                end
            end
        end
    end
    
    visitor.Chunk = function(node)
        process_comments_at_location(node, "leading")
        
        for _, statement in ipairs(node.body) do
            visitor.visit(statement)
            if fmt.config.line_breaks.after_statements then
                add_newline_with_indent()
            end
        end
        
        process_comments_at_location(node, "trailing")
        return result
    end
    
    visitor.LocalStatement = function(node)
        process_comments_at_location(node, "leading")
        
        add_to_output("local ")
        
        for i, variable in ipairs(node.variables) do
            visitor.visit(variable)
            if i < #node.variables then
                add_comma()
            end
        end
        
        if node.init and #node.init > 0 then
            add_to_output(" = ")
            for i, init_expr in ipairs(node.init) do
                visitor.visit(init_expr)
                if i < #node.init then
                    add_comma()
                end
            end
        end
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.FunctionDeclaration = function(node)
        process_comments_at_location(node, "leading")
        
        if node.isLocal then
            add_to_output("local ")
        end
        
        add_to_output("function ")
        visitor.visit(node.identifier)
        add_to_output("(")
        
        for i, param in ipairs(node.parameters) do
            visitor.visit(param)
            if i < #node.parameters then
                add_comma()
            end
        end
        
        add_to_output(")")
        
        if fmt.config.line_breaks.before_blocks then
            add_newline_with_indent()
        end
        
        indent_level = indent_level + 1
        for _, stmt in ipairs(node.body) do
            add_newline_with_indent()
            visitor.visit(stmt)
        end
        indent_level = indent_level - 1
        
        add_newline_with_indent()
        add_to_output("end")
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.AssignmentStatement = function(node)
        process_comments_at_location(node, "leading")
        
        for i, variable in ipairs(node.variables) do
            visitor.visit(variable)
            if i < #node.variables then
                add_comma()
            end
        end
        
        add_to_output(" = ")
        
        for i, init_expr in ipairs(node.init) do
            visitor.visit(init_expr)
            if i < #node.init then
                add_comma()
            end
        end
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.CallStatement = function(node)
        process_comments_at_location(node, "leading")
        visitor.visit(node.expression)
        process_comments_at_location(node, "trailing")
    end
    
    visitor.IfStatement = function(node)
        process_comments_at_location(node, "leading")
        
        for i, clause in ipairs(node.clauses) do
            if i == 1 then
                add_to_output("if ")
            elseif clause.type == "ElseClause" then
                add_to_output("else")
            else
                add_to_output("elseif ")
            end
            
            if clause.type ~= "ElseClause" then
                visitor.visit(clause.condition)
                add_to_output(" then")
            end
            
            if fmt.config.line_breaks.before_blocks then
                add_newline_with_indent()
            end
            
            indent_level = indent_level + 1
            for _, stmt in ipairs(clause.body) do
                add_newline_with_indent()
                visitor.visit(stmt)
            end
            indent_level = indent_level - 1
            
            if i < #node.clauses then
                add_newline_with_indent()
            end
        end
        
        add_newline_with_indent()
        add_to_output("end")
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.WhileStatement = function(node)
        process_comments_at_location(node, "leading")
        
        add_to_output("while ")
        visitor.visit(node.condition)
        add_to_output(" do")
        
        if fmt.config.line_breaks.before_blocks then
            add_newline_with_indent()
        end
        
        indent_level = indent_level + 1
        for _, stmt in ipairs(node.body) do
            add_newline_with_indent()
            visitor.visit(stmt)
        end
        indent_level = indent_level - 1
        
        add_newline_with_indent()
        add_to_output("end")
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.RepeatStatement = function(node)
        process_comments_at_location(node, "leading")
        
        add_to_output("repeat")
        
        if fmt.config.line_breaks.before_blocks then
            add_newline_with_indent()
        end
        
        indent_level = indent_level + 1
        for _, stmt in ipairs(node.body) do
            add_newline_with_indent()
            visitor.visit(stmt)
        end
        indent_level = indent_level - 1
        
        add_newline_with_indent()
        add_to_output("until ")
        visitor.visit(node.condition)
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.ForNumericStatement = function(node)
        process_comments_at_location(node, "leading")
        
        add_to_output("for ")
        visitor.visit(node.variable)
        add_to_output(" = ")
        visitor.visit(node.start)
        add_comma()
        visitor.visit(node.stop)
        
        if node.step then
            add_comma()
            visitor.visit(node.step)
        end
        
        if node.is_lua54_style then
            add_to_output(" step ")
            visitor.visit(node.step)
        end
        
        add_to_output(" do")
        
        if fmt.config.line_breaks.before_blocks then
            add_newline_with_indent()
        end
        
        indent_level = indent_level + 1
        for _, stmt in ipairs(node.body) do
            add_newline_with_indent()
            visitor.visit(stmt)
        end
        indent_level = indent_level - 1
        
        add_newline_with_indent()
        add_to_output("end")
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.ForGenericStatement = function(node)
        process_comments_at_location(node, "leading")
        
        add_to_output("for ")
        
        for i, variable in ipairs(node.variables) do
            visitor.visit(variable)
            if i < #node.variables then
                add_comma()
            end
        end
        
        add_to_output(" in ")
        
        for i, iterator in ipairs(node.iterators) do
            visitor.visit(iterator)
            if i < #node.iterators then
                add_comma()
            end
        end
        
        add_to_output(" do")
        
        if fmt.config.line_breaks.before_blocks then
            add_newline_with_indent()
        end
        
        indent_level = indent_level + 1
        for _, stmt in ipairs(node.body) do
            add_newline_with_indent()
            visitor.visit(stmt)
        end
        indent_level = indent_level - 1
        
        add_newline_with_indent()
        add_to_output("end")
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.DoStatement = function(node)
        process_comments_at_location(node, "leading")
        
        add_to_output("do")
        
        if fmt.config.line_breaks.before_blocks then
            add_newline_with_indent()
        end
        
        indent_level = indent_level + 1
        for _, stmt in ipairs(node.body) do
            add_newline_with_indent()
            visitor.visit(stmt)
        end
        indent_level = indent_level - 1
        
        add_newline_with_indent()
        add_to_output("end")
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.ReturnStatement = function(node)
        process_comments_at_location(node, "leading")
        
        add_to_output("return")
        
        if node.arguments and #node.arguments > 0 then
            add_to_output(" ")
            for i, arg in ipairs(node.arguments) do
                visitor.visit(arg)
                if i < #node.arguments then
                    add_comma()
                end
            end
        end
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.BreakStatement = function(node)
        process_comments_at_location(node, "leading")
        add_to_output("break")
        process_comments_at_location(node, "trailing")
    end
    
    visitor.GotoStatement = function(node)
        process_comments_at_location(node, "leading")
        add_to_output("goto ")
        add_to_output(node.label)
        process_comments_at_location(node, "trailing")
    end
    
    visitor.LabelStatement = function(node)
        process_comments_at_location(node, "leading")
        add_to_output("::" .. node.label .. "::")
        process_comments_at_location(node, "trailing")
    end
    
    visitor.Identifier = function(node)
        process_comments_at_location(node, "leading")
        add_to_output(node.name)
        
        if node.attributes and type(node.attributes) == "table" then
            local attr_names = {}
            for attr_name, _ in pairs(node.attributes) do
                table.insert(attr_names, attr_name)
            end
            
            if #attr_names > 0 then
                add_to_output(" <")
                table.sort(attr_names)
                for i, attr_name in ipairs(attr_names) do
                    add_to_output(attr_name)
                    if i < #attr_names then
                        add_to_output(", ")
                    end
                end
                add_to_output("> ")
            end
        end
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.LiteralExpression = function(node)
        if type(node.value) == "string" then
            add_to_output('"' .. node.value:gsub('"', '\\"') .. '"')
        else
            add_to_output(tostring(node.value))
        end
    end
    
    visitor.StringLiteral = function(node)
        add_to_output(node.raw)
    end
    
    visitor.NumericLiteral = function(node)
        add_to_output(node.raw)
    end
    
    visitor.BooleanLiteral = function(node)
        add_to_output(tostring(node.value))
    end
    
    visitor.NilLiteral = function()
        add_to_output("nil")
    end
    
    visitor.VarargExpression = function()
        add_to_output("...")
    end
    
    visitor.UnaryExpression = function(node)
        if node.operator == "not" then
            add_to_output("not ")
        else
            add_to_output(node.operator)
        end
        
        visitor.visit(node.argument)
    end
    
    visitor.BinaryExpression = function(node)
        process_comments_at_location(node, "leading")
        visitor.visit(node.left)
        
        local critical_spacing = {
            ["and"] = true,
            ["or"] = true,
            [".."] = true,
            ["=="] = true,
            ["~="] = true,
            ["<="] = true,
            [">="] = true,
            ["<"] = true,
            [">"] = true,

            ["&"] = true,
            ["|"] = true,
            ["~"] = true,
            ["<<"] = true,
            [">>"] = true,
            ["//"] = true,
            
            ["+"] = true,
            ["-"] = true
        }
        
        local potential_issues = {
            ["*"] = true,
            ["/"] = true,
            ["%"] = true,
            ["^"] = true
        }
        
        if critical_spacing[node.operator] then
            add_to_output(" " .. node.operator .. " ")
        elseif potential_issues[node.operator] then
            add_to_output(node.operator .. " ")
        else
            add_to_output(node.operator)
        end
        
        visitor.visit(node.right)
        process_comments_at_location(node, "trailing")
    end
    
    visitor.TableConstructorExpression = function(node)
        add_to_output("{")
        
        if #node.fields > 0 then
            if fmt.config.spaces.inside_braces then
                add_to_output(" ")
            end
            
            if fmt.config.line_breaks.before_blocks then
                add_newline_with_indent()
                indent_level = indent_level + 1
                
                for i, field in ipairs(node.fields) do
                    add_newline_with_indent()
                    visitor.visit(field)
                    if i < #node.fields then
                        add_comma()
                    end
                end
                
                indent_level = indent_level - 1
                add_newline_with_indent()
            else
                for i, field in ipairs(node.fields) do
                    visitor.visit(field)
                    if i < #node.fields then
                        add_comma()
                    end
                end
            end
            
            if fmt.config.spaces.inside_braces then
                add_to_output(" ")
            end
        end
        
        add_to_output("}")
    end
    
    visitor.TableKeyString = function(node)
        add_to_output(node.key.name .. " = ")
        visitor.visit(node.value)
    end
    
    visitor.TableKey = function(node)
        add_to_output("[")
        visitor.visit(node.key)
        add_to_output("] = ")
        visitor.visit(node.value)
    end
    
    visitor.TableValue = function(node)
        visitor.visit(node.value)
    end
    
    visitor.CallExpression = function(node)
        visitor.visit(node.base)
        add_to_output("(")
        
        if fmt.config.spaces.inside_parentheses then
            add_to_output(" ")
        end
        
        for i, arg in ipairs(node.arguments) do
            visitor.visit(arg)
            if i < #node.arguments then
                add_comma()
            end
        end
        
        if fmt.config.spaces.inside_parentheses then
            add_to_output(" ")
        end
        
        add_to_output(")")
    end
    
    visitor.MethodCallExpression = function(node)
        visitor.visit(node.base)
        add_to_output(":" .. node.method)
        add_to_output("(")
        
        if fmt.config.spaces.inside_parentheses then
            add_to_output(" ")
        end
        
        for i, arg in ipairs(node.arguments) do
            visitor.visit(arg)
            if i < #node.arguments then
                add_comma()
            end
        end
        
        if fmt.config.spaces.inside_parentheses then
            add_to_output(" ")
        end
        
        add_to_output(")")
    end
    
    visitor.MemberExpression = function(node)
        visitor.visit(node.base)
        add_to_output(node.indexer .. node.identifier.name)
    end
    
    visitor.IndexExpression = function(node)
        visitor.visit(node.base)
        add_to_output("[")
        
        if fmt.config.spaces.inside_brackets then
            add_to_output(" ")
        end
        
        visitor.visit(node.index)
        
        if fmt.config.spaces.inside_brackets then
            add_to_output(" ")
        end
        
        add_to_output("]")
    end
    
    visitor.FunctionExpression = function(node)
        add_to_output("function(")
        
        for i, param in ipairs(node.parameters) do
            visitor.visit(param)
            if i < #node.parameters then
                add_comma()
            end
        end
        
        add_to_output(")")
        
        if fmt.config.line_breaks.before_blocks then
            add_newline_with_indent()
        end
        
        indent_level = indent_level + 1
        for _, stmt in ipairs(node.body) do
            add_newline_with_indent()
            visitor.visit(stmt)
        end
        indent_level = indent_level - 1
        
        add_newline_with_indent()
        add_to_output("end")
    end
    
    visitor.Comment = function(node)
        if node.isMultiline then
            add_to_output("--[[" .. node.value .. "]]")
        else
            add_to_output("--" .. node.value)
        end
        add_newline_with_indent()
    end
    
    return visitor.visit(ast)
end

local function format_minified(ast, fmt, source_code)
    local result = ""
    
    local visitor = {}
    
    local function add_to_output(text)
        result = result .. text
    end
    
    function visitor.visit(node)
        if not node or not node.type then
            return
        end
        
        local handler = visitor[node.type]
        if handler then
            handler(node)
        else
            error("No handler for node type: " .. node.type)
        end
    end
    
    local function should_preserve_comment(comment)
        if not fmt.config.minify.remove_whitespace then
            return true
        end
        
        if fmt.config.comments.preserve_license == false and 
           fmt.config.comments.preserve_special == false and 
           fmt.config.comments.preserve_doc == false then
            return false
        end
        
        if fmt.config.comments.preserve_license and 
           (comment.value:lower():find("license") or 
            comment.value:lower():find("copyright")) then
            return true
        end
        
        if fmt.config.comments.preserve_special and 
           (comment.value:sub(1, 1) == "!" or 
            (comment.isMultiline and comment.value:sub(1, 1) == "!")) then
            return true
        end
        
        if fmt.config.comments.preserve_doc and 
           (comment.value:sub(1, 1) == "-" or 
            (comment.isMultiline and comment.value:sub(1, 3) == "DOC")) then
            return true
        end
        
        if comment.isMultiline and fmt.config.comments.remove_single_only then
            return true
        end
        
        if not comment.isMultiline and fmt.config.comments.remove_multi_only then
            return true
        end
        
        return false
    end
    
    local function process_comments_at_location(node, location)
        if node.comments and node.comments[location] then
            for _, comment in ipairs(node.comments[location]) do
                if should_preserve_comment(comment) then
                    if comment.isMultiline then
                        add_to_output("--[[" .. comment.value .. "]]")
                    else
                        add_to_output("--" .. comment.value)
                    end
                end
            end
        end
    end
    
    visitor.Chunk = function(node)
        process_comments_at_location(node, "leading")
        
        for i, statement in ipairs(node.body) do
            visitor.visit(statement)
            if i < #node.body then
                add_to_output(";")
            end
        end
        
        process_comments_at_location(node, "trailing")
        return result
    end
    
    visitor.LocalStatement = function(node)
        process_comments_at_location(node, "leading")
        
        add_to_output("local ")
        
        for i, variable in ipairs(node.variables) do
            visitor.visit(variable)
            if i < #node.variables then
                add_to_output(",")
            end
        end
        
        if node.init and #node.init > 0 then
            add_to_output("=")
            for i, init_expr in ipairs(node.init) do
                visitor.visit(init_expr)
                if i < #node.init then
                    add_to_output(",")
                end
            end
        end
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.FunctionDeclaration = function(node)
        process_comments_at_location(node, "leading")
        
        if node.isLocal then
            add_to_output("local ")
        end
        
        add_to_output("function ")
        visitor.visit(node.identifier)
        add_to_output("(")
        
        for i, param in ipairs(node.parameters) do
            visitor.visit(param)
            if i < #node.parameters then
                add_to_output(",")
            end
        end
        
        add_to_output(")")
        
        for i, stmt in ipairs(node.body) do
            visitor.visit(stmt)
            if i < #node.body and not fmt.config.minify.join_consecutive_statements then
                add_to_output(";")
            end
        end
        
        add_to_output(" end")
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.AssignmentStatement = function(node)
        process_comments_at_location(node, "leading")
        
        for i, variable in ipairs(node.variables) do
            visitor.visit(variable)
            if i < #node.variables then
                add_to_output(",")
            end
        end
        
        add_to_output("=")
        
        for i, init_expr in ipairs(node.init) do
            visitor.visit(init_expr)
            if i < #node.init then
                add_to_output(",")
            end
        end
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.CallStatement = function(node)
        process_comments_at_location(node, "leading")
        visitor.visit(node.expression)
        process_comments_at_location(node, "trailing")
    end
    
    visitor.IfStatement = function(node)
        process_comments_at_location(node, "leading")
        
        for i, clause in ipairs(node.clauses) do
            if i == 1 then
                add_to_output("if ")
            elseif clause.type == "ElseClause" then
                add_to_output("else ")
            else
                add_to_output("elseif ")
            end
            
            if clause.type ~= "ElseClause" then
                visitor.visit(clause.condition)
                add_to_output("then ")
            end
            
            for j, stmt in ipairs(clause.body) do
                visitor.visit(stmt)
                if j < #clause.body and not fmt.config.minify.join_consecutive_statements then
                    add_to_output(";")
                end
            end
        end
        
        add_to_output(" end")
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.WhileStatement = function(node)
        process_comments_at_location(node, "leading")
        
        add_to_output("while ")
        visitor.visit(node.condition)
        add_to_output("do ")
        
        for i, stmt in ipairs(node.body) do
            visitor.visit(stmt)
            if i < #node.body and not fmt.config.minify.join_consecutive_statements then
                add_to_output(";")
            end
        end
        
        add_to_output(" end")
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.RepeatStatement = function(node)
        process_comments_at_location(node, "leading")
        
        add_to_output("repeat ")
        
        for i, stmt in ipairs(node.body) do
            visitor.visit(stmt)
            if i < #node.body and not fmt.config.minify.join_consecutive_statements then
                add_to_output(";")
            end
        end
        
        add_to_output(" until ")
        visitor.visit(node.condition)
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.ForNumericStatement = function(node)
        process_comments_at_location(node, "leading")
        
        add_to_output("for ")
        visitor.visit(node.variable)
        add_to_output("=")
        visitor.visit(node.start)
        add_to_output(",")
        visitor.visit(node.stop)
        
        if node.step then
            add_to_output(",")
            visitor.visit(node.step)
        end
        
        add_to_output("do ")
        
        for i, stmt in ipairs(node.body) do
            visitor.visit(stmt)
            if i < #node.body and not fmt.config.minify.join_consecutive_statements then
                add_to_output(";")
            end
        end
        
        add_to_output(" end")
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.ForGenericStatement = function(node)
        process_comments_at_location(node, "leading")
        
        add_to_output("for ")
        
        for i, variable in ipairs(node.variables) do
            visitor.visit(variable)
            if i < #node.variables then
                add_to_output(",")
            end
        end
        
        add_to_output("in ")
        
        for i, iterator in ipairs(node.iterators) do
            visitor.visit(iterator)
            if i < #node.iterators then
                add_to_output(",")
            end
        end
        
        add_to_output("do ")
        
        for i, stmt in ipairs(node.body) do
            visitor.visit(stmt)
            if i < #node.body and not fmt.config.minify.join_consecutive_statements then
                add_to_output(";")
            end
        end
        
        add_to_output(" end")
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.DoStatement = function(node)
        process_comments_at_location(node, "leading")
        
        add_to_output("do ")
        
        for i, stmt in ipairs(node.body) do
            visitor.visit(stmt)
            if i < #node.body and not fmt.config.minify.join_consecutive_statements then
                add_to_output(";")
            end
        end
        
        add_to_output(" end")
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.ReturnStatement = function(node)
        process_comments_at_location(node, "leading")
        
        add_to_output("return")
        
        if node.arguments and #node.arguments > 0 then
            add_to_output(" ")
            for i, arg in ipairs(node.arguments) do
                visitor.visit(arg)
                if i < #node.arguments then
                    add_to_output(",")
                end
            end
        end
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.BreakStatement = function(node)
        process_comments_at_location(node, "leading")
        add_to_output("break")
        process_comments_at_location(node, "trailing")
    end
    
    visitor.GotoStatement = function(node)
        process_comments_at_location(node, "leading")
        add_to_output("goto " .. node.label)
        process_comments_at_location(node, "trailing")
    end
    
    visitor.LabelStatement = function(node)
        process_comments_at_location(node, "leading")
        add_to_output("::" .. node.label .. "::")
        process_comments_at_location(node, "trailing")
    end
    
    visitor.Identifier = function(node)
        process_comments_at_location(node, "leading")
        add_to_output(node.name)
        
        if node.attributes and type(node.attributes) == "table" then
            local attr_names = {}
            for attr_name, _ in pairs(node.attributes) do
                table.insert(attr_names, attr_name)
            end
            
            if #attr_names > 0 then
                add_to_output(" <")
                table.sort(attr_names)
                for i, attr_name in ipairs(attr_names) do
                    add_to_output(attr_name)
                    if i < #attr_names then
                        add_to_output(", ")
                    end
                end
                add_to_output("> ")
            end
        end
        
        process_comments_at_location(node, "trailing")
    end
    
    visitor.LiteralExpression = function(node)
        if type(node.value) == "string" then
            add_to_output('"' .. node.value:gsub('"', '\\"') .. '"')
        else
            add_to_output(tostring(node.value))
        end
    end
    
    visitor.StringLiteral = function(node)
        add_to_output(node.raw)
    end
    
    visitor.NumericLiteral = function(node)
        add_to_output(node.raw)
    end
    
    visitor.BooleanLiteral = function(node)
        add_to_output(tostring(node.value))
    end
    
    visitor.NilLiteral = function()
        add_to_output("nil")
    end
    
    visitor.VarargExpression = function()
        add_to_output("...")
    end
    
    visitor.UnaryExpression = function(node)
        if node.operator == "not" then
            add_to_output("not ")
        else
            add_to_output(node.operator)
        end
        
        visitor.visit(node.argument)
    end
    
    visitor.BinaryExpression = function(node)
        process_comments_at_location(node, "leading")
        visitor.visit(node.left)
        
        local critical_spacing = {
            ["and"] = true,
            ["or"] = true,
            [".."] = true,
            ["=="] = true,
            ["~="] = true,
            ["<="] = true,
            [">="] = true,
            ["<"] = true,
            [">"] = true,

            ["&"] = true,
            ["|"] = true,
            ["~"] = true,
            ["<<"] = true,
            [">>"] = true,
            ["//"] = true,
            
            ["+"] = true,
            ["-"] = true
        }
        
        local potential_issues = {
            ["*"] = true,
            ["/"] = true,
            ["%"] = true,
            ["^"] = true
        }
        
        if critical_spacing[node.operator] then
            add_to_output(" " .. node.operator .. " ")
        elseif potential_issues[node.operator] then
            add_to_output(node.operator .. " ")
            add_to_output(node.operator .. " ")
        else
            add_to_output(node.operator)
        end
        
        visitor.visit(node.right)
        process_comments_at_location(node, "trailing")
    end
    
    visitor.TableConstructorExpression = function(node)
        add_to_output("{")
        
        for i, field in ipairs(node.fields) do
            visitor.visit(field)
            if i < #node.fields then
                add_to_output(",")
            end
        end
        
        add_to_output("}")
    end
    
    visitor.TableKeyString = function(node)
        add_to_output(node.key.name .. "=")
        visitor.visit(node.value)
    end
    
    visitor.TableKey = function(node)
        add_to_output("[")
        visitor.visit(node.key)
        add_to_output("]=")
        visitor.visit(node.value)
    end
    
    visitor.TableValue = function(node)
        visitor.visit(node.value)
    end
    
    visitor.CallExpression = function(node)
        visitor.visit(node.base)
        add_to_output("(")
        
        for i, arg in ipairs(node.arguments) do
            visitor.visit(arg)
            if i < #node.arguments then
                add_to_output(",")
                add_to_output(" ")
            end
        end
        
        add_to_output(")")
    end
    
    visitor.MethodCallExpression = function(node)
        visitor.visit(node.base)
        add_to_output(":" .. node.method .. "(")
        
        for i, arg in ipairs(node.arguments) do
            visitor.visit(arg)
            if i < #node.arguments then
                add_to_output(",")
                add_to_output(" ")
            end
        end
        
        add_to_output(")")
    end
    
    visitor.MemberExpression = function(node)
        visitor.visit(node.base)
        add_to_output(node.indexer .. node.identifier.name)
    end
    
    visitor.IndexExpression = function(node)
        visitor.visit(node.base)
        add_to_output("[")
        visitor.visit(node.index)
        add_to_output("]")
    end
    
    visitor.FunctionExpression = function(node)
        add_to_output("function(")
        
        for i, param in ipairs(node.parameters) do
            visitor.visit(param)
            if i < #node.parameters then
                add_to_output(",")
            end
        end
        
        add_to_output(")")
        
        for i, stmt in ipairs(node.body) do
            visitor.visit(stmt)
            if i < #node.body and not fmt.config.minify.join_consecutive_statements then
                add_to_output(";")
            end
        end
        
        add_to_output(" end")
    end
    
    function visitor.visit(node)
        if not node then return end
        
        local handler = visitor[node.type]
        if handler then
            return handler(node)
        end
    end
    
    return visitor.visit(ast)
end

function formatter.format(fmt, code, source_name, is_minify)
    if not code or code == "" then
        return nil, "Empty code input"
    end
    
    local tokens, comments, lex_errors = lexer.tokenize(code, source_name)
    if lex_errors and #lex_errors > 0 then
        return nil, "Lexical errors: " .. table.concat(lex_errors, ", ")
    end
    
    local ast, parse_errors = parser.parse(code, source_name)
    if not ast then
        return nil, parse_errors and #parse_errors > 0 and "Parse errors: " .. table.concat(parse_errors, ", ") or "Failed to parse code"
    end
    
    if is_minify then
        local formatted, format_err = pcall(function() return format_minified(ast, fmt, code) end)
        if not formatted or format_err == "" then
            return nil, "Minification failed: " .. (type(format_err) == "string" and format_err or "unknown error")
        end
        return format_err, nil
    else
        local formatted, format_err = pcall(function() return format_beautified(ast, fmt, code) end)
        if not formatted or format_err == "" then
            return nil, "Beautification failed: " .. (type(format_err) == "string" and format_err or "unknown error")
        end
        return format_err, nil
    end
end

function formatter.beautify(fmt, code, source_name)
    local formatted, err = formatter.format(fmt, code, source_name, false)
    if not formatted then
        return nil, err or "Beautification failed"
    end
    return formatted, nil
end

function formatter.minify(fmt, code, source_name)
    local formatted, err = formatter.format(fmt, code, source_name, true)
    if not formatted then
        return nil, err or "Minification failed"
    end
    return formatted, nil
end

function formatter.load_config(file_path)
    local file = io.open(file_path, "r")
    if not file then
        return nil, "Could not open config file: " .. file_path
    end
    
    local content = file:read("*all")
    file:close()
    
    local ok, config = pcall(function()
        local f = load("return " .. content)
        return f()
    end)
    
    if not ok then
        return nil, "Invalid configuration format: " .. tostring(config)
    end
    
    return config
end

function formatter.save_config(config, file_path)
    local file = io.open(file_path, "w")
    if not file then
        return false, "Could not open config file for writing: " .. file_path
    end
    
    local function serialize_table(tbl, indent)
        indent = indent or 0
        local spaces = string.rep("    ", indent)
        local result = "{\n"
        
        for k, v in pairs(tbl) do
            local key_str
            if type(k) == "string" then
                key_str = k
            else
                key_str = "[" .. tostring(k) .. "]"
            end
            
            result = result .. spaces .. "    " .. key_str .. " = "
            
            if type(v) == "table" then
                result = result .. serialize_table(v, indent + 1)
            elseif type(v) == "string" then
                result = result .. '"' .. v .. '"'
            else
                result = result .. tostring(v)
            end
            
            result = result .. ",\n"
        end
        
        return result .. spaces .. "}"
    end
    
    file:write(serialize_table(config))
    file:close()
    
    return true
end

formatter.PRESETS = {
    default = formatter.DEFAULT_CONFIG,
    
    compact = {
        indent = {
            use_tabs = false,
            size = 2,
        },
        line_breaks = {
            before_blocks = true,
            after_statements = false,
            max_line_length = 120,
        },
        spaces = {
            around_operators = true,
            after_commas = true,
            inside_parentheses = false,
            inside_braces = false,
            inside_brackets = false,
        },
        alignment = {
            function_parameters = false,
            table_fields = false,
        },
    },
    
    expanded = {
        indent = {
            use_tabs = false,
            size = 4,
        },
        line_breaks = {
            before_blocks = true,
            after_statements = true,
            max_line_length = 80,
        },
        spaces = {
            around_operators = true,
            after_commas = true,
            inside_parentheses = true,
            inside_braces = true,
            inside_brackets = true,
        },
        alignment = {
            function_parameters = true,
            table_fields = true,
        },
    },
    
    minify = {
        minify = {
            remove_whitespace = true,
            join_consecutive_statements = true,
            compress_tokens = true,
            shorten_identifiers = false,
        },
        comments = {
            preserve_license = true,
            preserve_special = true,
            preserve_doc = false,
            remove_single_only = false,
            remove_multi_only = false,
        },
    },
    
    rmcomments = {
        comments = {
            preserve_license = false,
            preserve_special = false,
            preserve_doc = false,
            remove_single_only = false,
            remove_multi_only = false,
        },
    },
}

function formatter.get_preset(name)
    return formatter.PRESETS[name] or formatter.DEFAULT_CONFIG
end

return formatter
