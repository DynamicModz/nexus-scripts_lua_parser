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
    ["[]="]=  "__newindex",
    ["call"] = "__call",
    
    [".."] = "__concat",
    
    ["pairs"] = "__pairs",
    ["ipairs"] = "__ipairs",
    ["tostring"] = "__tostring",
    ["gc"] = "__gc",
    ["mode"] = "__mode",
    ["metatable"] = "__metatable",
    ["name"] = "__name"
}

local ast_nodes = {}

function ast_nodes.Chunk(body, comments)
    return { 
        type = "Chunk", 
        body = body or {}, 
        comments = comments or {} 
    }
end

function ast_nodes.LocalStatement(variables, init)
    return { 
        type = "LocalStatement", 
        variables = variables or {}, 
        init = init or {} 
    }
end

function ast_nodes.FunctionDeclaration(identifier, parameters, body, isLocal)
    return { 
        type = "FunctionDeclaration", 
        identifier = identifier, 
        parameters = parameters or {}, 
        body = body or {}, 
        isLocal = isLocal or false 
    }
end

function ast_nodes.AssignmentStatement(variables, init)
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
    
    return {
        type = "AssignmentStatement",
        variables = variables,
        init = init,
        metamethod_ops = metamethod_ops,
        has_metamethods = #metamethod_ops > 0
    }
end

function ast_nodes.CallStatement(expression)
    return { 
        type = "CallStatement", 
        expression = expression 
    }
end

function ast_nodes.DoStatement(body)
    return { 
        type = "DoStatement", 
        body = body or {} 
    }
end

function ast_nodes.WhileStatement(condition, body)
    return { 
        type = "WhileStatement", 
        condition = condition, 
        body = body or {} 
    }
end

function ast_nodes.RepeatStatement(condition, body)
    return { 
        type = "RepeatStatement", 
        condition = condition, 
        body = body or {} 
    }
end

function ast_nodes.IfStatement(clauses)
    return { 
        type = "IfStatement", 
        clauses = clauses or {} 
    }
end

function ast_nodes.IfClause(condition, body)
    return { 
        type = "IfClause", 
        condition = condition, 
        body = body or {} 
    }
end

function ast_nodes.ElseClause(body)
    return { 
        type = "ElseClause", 
        body = body or {} 
    }
end

function ast_nodes.ForNumericStatement(variable, start, stop, step, body)
    return { 
        type = "ForNumericStatement", 
        variable = variable, 
        start = start, 
        stop = stop, 
        step = step, 
        body = body or {} 
    }
end

function ast_nodes.ForGenericStatement(variables, iterators, body)
    return { 
        type = "ForGenericStatement", 
        variables = variables or {}, 
        iterators = iterators or {}, 
        body = body or {} 
    }
end

function ast_nodes.BreakStatement()
    return { 
        type = "BreakStatement" 
    }
end

function ast_nodes.ReturnStatement(arguments)
    return { 
        type = "ReturnStatement", 
        arguments = arguments or {} 
    }
end

function ast_nodes.LiteralExpression(value, raw)
    return { 
        type = "LiteralExpression", 
        value = value, 
        raw = raw 
    }
end

function ast_nodes.Identifier(name)
    return { 
        type = "Identifier", 
        name = name 
    }
end

function ast_nodes.UnaryExpression(operator, argument)
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
    
    return { 
        type = "UnaryExpression", 
        operator = operator, 
        argument = argument,
        potential_metamethod = metamethod,
        has_metamethod = metamethod ~= nil
    }
end

function ast_nodes.BinaryExpression(operator, left, right)
    local metamethod = OP_TO_METAMETHOD[operator]
    
    local substituted_operator = operator
    local swap_operands = false
    local negate_result = false
    
    if operator == ">" then
        substituted_operator = "<"
        metamethod = OP_TO_METAMETHOD["<"]
        swap_operands = true
    elseif operator == ">=" then
        substituted_operator = "<="  
        metamethod = OP_TO_METAMETHOD["<="]
        swap_operands = true
    elseif operator == "~=" then
        substituted_operator = "=="
        metamethod = OP_TO_METAMETHOD["=="]
        negate_result = true
    end
    
    return {
        type = "BinaryExpression",
        operator = operator,
        substituted_operator = substituted_operator,
        original_left = left,
        original_right = right,
        left = swap_operands and right or left,
        right = swap_operands and left or right,
        potential_metamethod = metamethod,
        has_metamethod = metamethod ~= nil,
        swap_operands = swap_operands,
        negate_result = negate_result
    }
end

function ast_nodes.TableConstructorExpression(fields)
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
    
    return {
        type = "TableConstructorExpression",
        fields = fields or {},
        has_metamethods = has_metamethods,
        metamethods = metamethods
    }
end

function ast_nodes.TableKeyString(key, value)
    return { 
        type = "TableKeyString", 
        key = key, 
        value = value 
    }
end

function ast_nodes.TableKey(key, value)
    return { 
        type = "TableKey", 
        key = key, 
        value = value 
    }
end

function ast_nodes.TableValue(value)
    return { 
        type = "TableValue", 
        value = value 
    }
end

function ast_nodes.CallExpression(base, arguments)
    local is_method_call = base.type == "MemberExpression"
    
    return {
        type = "CallExpression",
        base = base,
        arguments = arguments or {},
        is_method_call = is_method_call,
        potential_metamethod = OP_TO_METAMETHOD["call"],
        has_metamethod = true  
    }
end

function ast_nodes.MethodCallExpression(base, method, arguments)
    return { 
        type = "MethodCallExpression", 
        base = base, 
        method = method, 
        arguments = arguments or {} 
    }
end

function ast_nodes.MemberExpression(base, indexer, identifier)
    return { 
        type = "MemberExpression", 
        base = base, 
        indexer = indexer,
        identifier = identifier 
    }
end

function ast_nodes.IndexExpression(base, index)
    return {
        type = "IndexExpression",
        base = base,
        index = index,
        potential_metamethod = OP_TO_METAMETHOD["[]"],
        has_metamethod = true,
        is_assignment_target = false 
    }
end

function ast_nodes.FunctionExpression(parameters, body, isLocal)
    return { 
        type = "FunctionExpression", 
        parameters = parameters or {},
        body = body or {},
        isLocal = isLocal or false 
    }
end

function ast_nodes.NumericLiteral(value, raw)
    return { 
        type = "NumericLiteral", 
        value = value, 
        raw = raw 
    }
end

function ast_nodes.BooleanLiteral(value)
    return { 
        type = "BooleanLiteral", 
        value = value 
    }
end

function ast_nodes.NilLiteral()
    return { 
        type = "NilLiteral" 
    }
end

function ast_nodes.StringLiteral(value, raw)
    return {
        type = "StringLiteral",
        value = value,
        raw = raw
    }
end

function ast_nodes.Comment(value, isMultiline)
    return { 
        type = "Comment", 
        value = value, 
        isMultiline = isMultiline or false 
    }
end

function ast_nodes.createErrorNode(message, token, nodeType)
    return {
        type = nodeType or "ErrorNode",
        message = message,
        line = token and token.line or 0,
        col = token and token.col or 0,
        isError = true
    }
end

function ast_nodes.GotoStatement(label)
    if not label then
        return ast_nodes.createErrorNode("Missing label in goto statement", nil, "GotoStatement")
    end
    return {
        type = "GotoStatement",
        label = label
    }
end

function ast_nodes.LabelStatement(label)
    if not label then
        return ast_nodes.createErrorNode("Missing name in label statement", nil, "LabelStatement")
    end
    return {
        type = "LabelStatement",
        label = label
    }
end

return ast_nodes
