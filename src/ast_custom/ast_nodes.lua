--[[

    Dev : NexusScripts

]]

local OP_TO_METAMETHOD = {
    ["+"] = "__add",
    ["-"] = "__sub",
    ["*"] = "__mul",
    ["/"] = "__div",
    ["%"] = "__mod",
    ["^"] = "__pow",
    ["//"] = "__idiv",
    
    ["&"] = "__band",
    ["|"] = "__bor",
    ["~"] = "__bxor",
    ["<<"] = "__shl",
    [">>"] = "__shr",
    ["~unary"] = "__bnot",
    
    ["-unary"] = "__unm",
    ["#"] = "__len",
    
    ["=="] = "__eq",
    ["<"] = "__lt",
    ["<="] = "__le",
    
    ["[]"] = "__index",
    ["[]="] = "__newindex",
    ["call"] = "__call",
    
    [".."] = "__concat",
    
    ["pairs"] = "__pairs",
    ["ipairs"] = "__ipairs",
    ["tostring"] = "__tostring",
    ["gc"] = "__gc",
    ["mode"] = "__mode",
    ["metatable"] = "__metatable",
    ["name"] = "__name",
    
    ["close"] = "__close"
}

local ast_nodes = {}

local function with_location(node, token_start, token_end)
    if token_start then
        node.loc = {
            start = {
                line = token_start.line,
                col = token_start.col,
                offset = token_start.offset or 0
            },
            ["end"] = {
                line = (token_end and token_end.line) or token_start.line,
                col = (token_end and token_end.col) or token_start.col,
                offset = (token_end and token_end.offset) or token_start.offset or 0
            },
            source = token_start.source or ""
        }
    end
    return node
end

function ast_nodes.get_source_range(node)
    if not node or not node.loc then
        return "unknown location"
    end
    
    local source = node.loc.source or "unknown"
    local start_line = node.loc.start.line or 0
    local start_col = node.loc.start.col or 0
    local end_line = node.loc["end"].line or start_line
    local end_col = node.loc["end"].col or start_col
    
    if start_line == end_line then
        return string.format("%s:%d:%d-%d", source, start_line, start_col, end_col)
    else
        return string.format("%s:%d:%d-%d:%d", source, start_line, start_col, end_line, end_col)
    end
end

function ast_nodes.get_source_text(node, source_code)
    if not node or not node.loc or not source_code then
        return nil
    end
    
    local start_offset = node.loc.start.offset
    local end_offset = node.loc["end"].offset
    
    if start_offset and end_offset and start_offset <= end_offset then
        return string.sub(source_code, start_offset + 1, end_offset + 1)
    end
    
    return nil
end

function ast_nodes.Chunk(body, comments, token_start, token_end)
    return with_location({ 
        type = "Chunk",
        body = body or {},
        comments = comments or {} 
    }, token_start, token_end)
end

function ast_nodes.LocalStatement(variables, init, token_start, token_end)
    local has_attributed_variables = false
    local has_const_variables = false
    local has_close_variables = false
    
    for _, variable in ipairs(variables or {}) do
        if variable.type == "Identifier" and variable.attributes then
            if variable.attributes.const then
                has_attributed_variables = true
                has_const_variables = true
            end
            if variable.attributes.close then
                has_attributed_variables = true
                has_close_variables = true
            end
        end
    end
    
    return with_location({ 
        type = "LocalStatement", 
        variables = variables or {}, 
        init = init or {},
        has_attributed_variables = has_attributed_variables,
        has_const_variables = has_const_variables,
        has_close_variables = has_close_variables,
        lua_version = has_attributed_variables and "5.4" or nil
    }, token_start, token_end)
end

function ast_nodes.FunctionDeclaration(identifier, parameters, body, isLocal, token_start, token_end)
    return with_location({ 
        type = "FunctionDeclaration", 
        identifier = identifier, 
        parameters = parameters or {}, 
        body = body or {}, 
        isLocal = isLocal or false 
    }, token_start, token_end)
end

function ast_nodes.AssignmentStatement(variables, init, token_start, token_end)
    local metamethod_ops = {}
    
    for i, var in ipairs(variables or {}) do
        if var.type == "IndexExpression" then
            var.is_assignment_target = true
            table.insert(metamethod_ops, {
                type = "newindex",
                variable_index = i,
                base = var.base,
                key = var.index,
                value = init and init[i]
            })
        end
    end
    
    return with_location({
        type = "AssignmentStatement",
        variables = variables,
        init = init,
        metamethod_ops = metamethod_ops,
        has_metamethods = #metamethod_ops > 0
    }, token_start, token_end)
end

function ast_nodes.CallStatement(expression, token_start, token_end)
    return with_location({ 
        type = "CallStatement", 
        expression = expression 
    }, token_start, token_end)
end

function ast_nodes.DoStatement(body, token_start, token_end)
    return with_location({ 
        type = "DoStatement", 
        body = body or {} 
    }, token_start, token_end)
end

function ast_nodes.WhileStatement(condition, body, token_start, token_end)
    return with_location({ 
        type = "WhileStatement", 
        condition = condition, 
        body = body or {} 
    }, token_start, token_end)
end

function ast_nodes.RepeatStatement(condition, body, token_start, token_end)
    return with_location({ 
        type = "RepeatStatement", 
        condition = condition, 
        body = body or {} 
    }, token_start, token_end)
end

function ast_nodes.IfStatement(clauses, token_start, token_end)
    return with_location({ 
        type = "IfStatement", 
        clauses = clauses or {} 
    }, token_start, token_end)
end

function ast_nodes.IfClause(condition, body, token_start, token_end)
    return with_location({ 
        type = "IfClause", 
        condition = condition, 
        body = body or {} 
    }, token_start, token_end)
end

function ast_nodes.ElseClause(body, token_start, token_end)
    return with_location({ 
        type = "ElseClause", 
        body = body or {} 
    }, token_start, token_end)
end

function ast_nodes.ForNumericStatement(variable, start, stop, step, body, token_start, token_end, is_lua54_style)
    return with_location({ 
        type = "ForNumericStatement", 
        variable = variable, 
        start = start, 
        stop = stop, 
        step = step, 
        body = body or {},
        is_lua54_style = is_lua54_style or false,
        lua_version = is_lua54_style and "5.4" or nil
    }, token_start, token_end)
end

function ast_nodes.ForGenericStatement(variables, iterators, body, token_start, token_end)
    return with_location({ 
        type = "ForGenericStatement", 
        variables = variables or {}, 
        iterators = iterators or {}, 
        body = body or {} 
    }, token_start, token_end)
end

function ast_nodes.BreakStatement(token_start, token_end)
    return with_location({ 
        type = "BreakStatement" 
    }, token_start, token_end)
end

function ast_nodes.ReturnStatement(arguments, token_start, token_end)
    return with_location({ 
        type = "ReturnStatement", 
        arguments = arguments or {} 
    }, token_start, token_end)
end

function ast_nodes.LiteralExpression(value, raw, token_start, token_end)
    return with_location({ 
        type = "LiteralExpression", 
        value = value, 
        raw = raw 
    }, token_start, token_end)
end

function ast_nodes.Identifier(name, attributes, token_start, token_end)
    return with_location({ 
        type = "Identifier", 
        name = name,
        attributes = attributes or {}
    }, token_start, token_end)
end

function ast_nodes.UnaryExpression(operator, argument, token_start, token_end)
    local metamethod
    if operator == "~" then
        metamethod = OP_TO_METAMETHOD["~unary"]
    elseif operator == "-" then
        metamethod = OP_TO_METAMETHOD["-unary"]
    elseif operator == "#" then
        metamethod = OP_TO_METAMETHOD["#"]
    elseif operator == "not" then
        metamethod = nil
    end
    
    local is_lua53_feature = (operator == "~")
    
    return with_location({ 
        type = "UnaryExpression",
        operator = operator,
        argument = argument,
        metamethod = metamethod,
        is_lua53_feature = is_lua53_feature,
        lua_version = is_lua53_feature and "5.3" or nil
    }, token_start, token_end)
end

function ast_nodes.BinaryExpression(operator, left, right, token_start, token_end)
    local metamethod = OP_TO_METAMETHOD[operator]
    
    local substituted_operator = operator
    local swap_operands = false
    
    local is_lua53_feature = operator == "&" or 
                             operator == "|" or 
                             operator == "~" or 
                             operator == "<<" or 
                             operator == ">>" or 
                             operator == "//"
    
    return with_location({ 
        type = "BinaryExpression",
        operator = operator,
        left = left,
        right = right,
        metamethod = metamethod,
        substituted_operator = substituted_operator,
        swap_operands = swap_operands,
        is_lua53_feature = is_lua53_feature,
        lua_version = is_lua53_feature and "5.3" or nil
    }, token_start, token_end)
end

function ast_nodes.TableConstructorExpression(fields, token_start, token_end)
    local metamethods = {}
    local has_metamethods = false
    
    if fields then
        for _, field in ipairs(fields) do
            if field.type == "TableKeyString" and 
               field.key and field.key.type == "Identifier" then
                local key_name = field.key.name
                
                for op, metamethod in pairs(OP_TO_METAMETHOD) do
                    if key_name == metamethod then
                        metamethods[metamethod] = {
                            operator = op,
                            field = field
                        }
                        has_metamethods = true
                        break
                    end
                end
            end
        end
    end
    
    return with_location({
        type = "TableConstructorExpression",
        fields = fields or {},
        has_metamethods = has_metamethods,
        metamethods = metamethods
    }, token_start, token_end)
end

function ast_nodes.TableKeyString(key, value, token_start, token_end)
    return with_location({ 
        type = "TableKeyString", 
        key = key, 
        value = value 
    }, token_start, token_end)
end

function ast_nodes.TableKey(key, value, token_start, token_end)
    return with_location({ 
        type = "TableKey", 
        key = key, 
        value = value 
    }, token_start, token_end)
end

function ast_nodes.TableValue(value, token_start, token_end)
    return with_location({ 
        type = "TableValue", 
        value = value 
    }, token_start, token_end)
end

function ast_nodes.CallExpression(base, arguments, token_start, token_end)
    local is_method_call = base.type == "MemberExpression"
    
    return with_location({
        type = "CallExpression",
        base = base,
        arguments = arguments or {},
        is_method_call = is_method_call,
        potential_metamethod = OP_TO_METAMETHOD["call"],
        has_metamethod = true  
    }, token_start, token_end)
end

function ast_nodes.MethodCallExpression(base, method, arguments, token_start, token_end)
    return with_location({ 
        type = "MethodCallExpression", 
        base = base, 
        method = method, 
        arguments = arguments or {} 
    }, token_start, token_end)
end

function ast_nodes.MemberExpression(base, indexer, identifier, token_start, token_end)
    return with_location({ 
        type = "MemberExpression", 
        base = base, 
        indexer = indexer,
        identifier = identifier 
    }, token_start, token_end)
end

function ast_nodes.IndexExpression(base, index, token_start, token_end)
    return with_location({
        type = "IndexExpression",
        base = base,
        index = index,
        potential_metamethod = OP_TO_METAMETHOD["[]"],
        has_metamethod = true,
        is_assignment_target = false 
    }, token_start, token_end)
end

function ast_nodes.FunctionExpression(parameters, body, isLocal, token_start, token_end)
    return with_location({ 
        type = "FunctionExpression", 
        parameters = parameters or {},
        body = body or {},
        isLocal = isLocal or false 
    }, token_start, token_end)
end

function ast_nodes.NumericLiteral(value, raw, token_start, token_end)
    local is_lua53_feature = false
    if raw then
        if raw:match("^0[xX].*[pP]") then
            is_lua53_feature = true
        elseif raw:match("^0[bB]") then
            is_lua53_feature = true
        end
    end
    
    return with_location({ 
        type = "NumericLiteral", 
        value = value, 
        raw = raw,
        is_lua53_feature = is_lua53_feature,
        lua_version = is_lua53_feature and "5.3" or nil
    }, token_start, token_end)
end

function ast_nodes.BooleanLiteral(value, token_start, token_end)
    return with_location({ 
        type = "BooleanLiteral", 
        value = value 
    }, token_start, token_end)
end

function ast_nodes.NilLiteral(token_start, token_end)
    return with_location({ 
        type = "NilLiteral" 
    }, token_start, token_end)
end

function ast_nodes.StringLiteral(value, raw, token_start, token_end)
    local is_lua53_feature = false
    if raw then
        if raw:match("\\u%{") or raw:match("\\z") then
            is_lua53_feature = true
        end
    end
    
    return with_location({
        type = "StringLiteral",
        value = value,
        raw = raw,
        is_lua53_feature = is_lua53_feature,
        lua_version = is_lua53_feature and "5.3" or nil
    }, token_start, token_end)
end

function ast_nodes.VarargExpression(token_start, token_end)
    return with_location({
        type = "VarargExpression"
    }, token_start, token_end)
end

function ast_nodes.Comment(value, isMultiline, token_start, token_end)
    return with_location({ 
        type = "Comment", 
        value = value, 
        isMultiline = isMultiline or false 
    }, token_start, token_end)
end

function ast_nodes.createErrorNode(message, token, nodeType, token_start, token_end)
    return with_location({
        type = nodeType or "ErrorNode",
        message = message,
        line = token and token.line or 0,
        col = token and token.col or 0,
        source = token and token.source or "",
        offset = token and token.offset or 0,
        isError = true
    }, token_start or token, token_end or token)
end

function ast_nodes.GotoStatement(label, token_start, token_end)
    if not label then
        return ast_nodes.createErrorNode("Missing label in goto statement", nil, "GotoStatement", token_start, token_end)
    end
    return with_location({
        type = "GotoStatement",
        label = label
    }, token_start, token_end)
end

function ast_nodes.LabelStatement(label, token_start, token_end)
    if not label then
        return ast_nodes.createErrorNode("Missing name in label statement", nil, "LabelStatement", token_start, token_end)
    end
    return with_location({
        type = "LabelStatement",
        label = label
    }, token_start, token_end)
end

ast_nodes.create_visitor = function()
    local visitor = {}
    
    function visitor:visit(node)
        if not node then return nil end
        
        local method_name = "visit_" .. node.type
        if self[method_name] then
            return self[method_name](self, node)
        else
            return self:default_visit(node)
        end
    end
    
    function visitor:default_visit(node)
        if not node then return nil end
        
        local result = {}
        
        if node.type == "Chunk" or 
           node.type == "LocalStatement" or 
           node.type == "DoStatement" or 
           node.type == "WhileStatement" or 
           node.type == "RepeatStatement" or 
           node.type == "IfStatement" or
           node.type == "ForNumericStatement" or
           node.type == "ForGenericStatement" then
            if node.body then
                for i, stmt in ipairs(node.body) do
                    local res = self:visit(stmt)
                    if res ~= nil then
                        result[i] = res
                    end
                end
            end
        elseif node.type == "FunctionDeclaration" or
               node.type == "FunctionExpression" then
            for i, param in ipairs(node.parameters or {}) do
                local res = self:visit(param)
                if res ~= nil then
                    result["param_" .. i] = res
                end
            end
            
            for i, stmt in ipairs(node.body or {}) do
                local res = self:visit(stmt)
                if res ~= nil then
                    result["body_" .. i] = res
                end
            end
        elseif node.type == "CallExpression" or
               node.type == "MethodCallExpression" then
            local base_res = self:visit(node.base)
            if base_res ~= nil then
                result.base = base_res
            end
            
            for i, arg in ipairs(node.arguments or {}) do
                local res = self:visit(arg)
                if res ~= nil then
                    result["arg_" .. i] = res
                end
            end
        elseif node.type == "TableConstructorExpression" then
            for i, field in ipairs(node.fields or {}) do
                local res = self:visit(field)
                if res ~= nil then
                    result["field_" .. i] = res
                end
            end
        elseif node.type == "BinaryExpression" then
            local left_res = self:visit(node.left)
            if left_res ~= nil then
                result.left = left_res
            end
            
            local right_res = self:visit(node.right)
            if right_res ~= nil then
                result.right = right_res
            end
        elseif node.type == "UnaryExpression" then
            local arg_res = self:visit(node.argument)
            if arg_res ~= nil then
                result.argument = arg_res
            end
        end
        
        return #result > 0 and result or nil
    end
    
    return visitor
end

return ast_nodes
