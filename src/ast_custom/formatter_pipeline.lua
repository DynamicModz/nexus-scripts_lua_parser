--[[

    Dev : NexusScripts

]]

local formatter = require("ast_custom.formatter")
local formatter_config = require("ast_custom.formatter_config")
local parser = require("ast_custom.parser")
local lexer = require("ast_custom.lexer")

local pipeline = {}

local function debug_print_ast(ast, indent)
    indent = indent or 0
    local indent_str = string.rep("  ", indent)
    
    if not ast then
        print(indent_str .. "nil")
        return
    end
    
    if type(ast) ~= "table" then
        print(indent_str .. tostring(ast))
        return
    end
    
    print(indent_str .. "Node Type: " .. (ast.type or "unknown"))
    
    if ast.type == "Identifier" and ast.attributes then
        print(indent_str .. "  Name: " .. ast.name)
        print(indent_str .. "  Attributes:")
        for attr, _ in pairs(ast.attributes) do
            print(indent_str .. "    " .. attr)
        end
    end
    
    for k, v in pairs(ast) do
        if k ~= "type" and type(v) ~= "table" and k ~= "attributes" then
            print(indent_str .. "  " .. k .. ": " .. tostring(v))
        end
    end
    
    for k, v in pairs(ast) do
        if k ~= "type" and type(v) == "table" and k ~= "attributes" then
            print(indent_str .. "  " .. k .. ":")
            if k == "body" or k == "variables" or k == "fields" or k == "parameters" or k == "arguments" then
                for i, node in ipairs(v) do
                    debug_print_ast(node, indent + 2)
                end
            else
                debug_print_ast(v, indent + 2)
            end
        end
    end
end

local function parse_step(code, source_name, options)
    local tokens, comments = lexer.tokenize(code, source_name)
    local ast, errors = parser.parse(code, source_name)
    
    if options.debug_ast then
        print("==== DEBUG AST ====")
        debug_print_ast(ast)
        print("==================")
    end
    
    return {
        ast = ast,
        tokens = tokens,
        comments = comments,
        errors = errors,
        source_code = code,
        source_name = source_name
    }, errors
end

local function format_step(state, options)
    if not state.ast then
        return state, state.errors or { { message = "No AST to format" } }
    end
    
    local fmt = formatter.create(options.config)
    local formatted_code
    
    if options.minify then
        formatted_code = formatter.minify(fmt, state.source_code, state.source_name)
    else
        formatted_code = formatter.beautify(fmt, state.source_code, state.source_name)
    end
    
    if not formatted_code then
        return state, { { message = "Formatting failed" } }
    end
    
    state.formatted_code = formatted_code
    return state, nil
end

function pipeline.run(code, source_name, options)
    options = options or {}
    options.config = options.config or formatter_config.DEFAULT
    
    local state, errors = parse_step(code, source_name, options)
    if errors and #errors > 0 then
        return nil, errors
    end
    
    if options.config.comments and 
       options.config.comments.preserve_license == false and
       options.config.comments.preserve_special == false and
       options.config.comments.preserve_doc == false then
        options.remove_comments = true
    end
    
    state, errors = format_step(state, options)
    if errors and #errors > 0 then
        return nil, errors
    end
    
    return state.formatted_code, nil
end

function pipeline.beautify(code, source_name, config)
    local options = {
        config = config or formatter_config.DEFAULT,
        minify = false
    }
    
    return pipeline.run(code, source_name, options)
end

function pipeline.minify(code, source_name, config)
    local options = {
        config = config or formatter_config.get_preset("minify"),
        minify = true
    }
    
    return pipeline.run(code, source_name, options)
end

function pipeline.format(code, source_name, config_or_preset_name)
    local config
    
    if type(config_or_preset_name) == "string" then
        config = formatter_config.get_preset(config_or_preset_name)
    else
        config = config_or_preset_name or formatter_config.DEFAULT
    end
    
    local options = {
        config = config,
        minify = (config_or_preset_name == "minify")
    }
    
    return pipeline.run(code, source_name, options)
end

function pipeline.remove_comments(code, source_name, config)
    local options = {
        config = config or formatter_config.get_preset("rmcomments"),
        minify = false
    }
    
    return pipeline.run(code, source_name, options)
end

return pipeline
