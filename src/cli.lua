#!/usr/bin/env lua
--[[
    nexusscripts Lua Parser - Command Line Interface
    Dev: NexusScripts
]]

package.path = package.path .. ";./?.lua;./src/?.lua"
local parser = require("ast_custom.parser")
local lexer = require("ast_custom.lexer")
local formatter = require("ast_custom.formatter")
local formatter_config = require("ast_custom.formatter_config")

local cli = {}

local LOGO = [[

 _   _                     ____            _       _       
| \ | | _____  ___   _ ___/ ___|  ___ _ __(_)_ __ | |_ ___ 
|  \| |/ _ \ \/ / | | / __\___ \ / __| '__| | '_ \| __/ __|
| |\  |  __/>  <| |_| \__ \___) | (__| |  | | |_) | |_\__ \
|_| \_|\___/_/\_\\__,_|___/____/ \___|_|  |_| .__/ \__|___/
                                            |_|           

        --== NexusScripts Lua Parser v1.0 ==--                                                         
]]

local COMMANDS = {
    parse = {
        desc = "Parse a Lua file and generate AST",
        usage = "cli.lua parse <input_file> [output_file] [--format=json|lua] [--output=ast|tokens|both]"
    },
    format = {
        desc = "Format a Lua file with beautification, minification, or comment removal",
        usage = "cli.lua format <input_file> [output_file] [--style=default|compact|expanded|minify|rmcomments] [--config=<config_file>] [--debug-ast]"
    },
    help = {
        desc = "Show help information",
        usage = "cli.lua help [command]"
    },
    version = {
        desc = "Show version information",
        usage = "cli.lua version"
    },
    config = {
        desc = "Create a formatter configuration file",
        usage = "cli.lua config <output_file> [--preset=default|compact|expanded|minify|rmcomments]"
    }
}

local COLORS = {
    reset = "\27[0m",
    red = "\27[31m",
    green = "\27[32m",
    yellow = "\27[33m",
    blue = "\27[34m",
    magenta = "\27[35m",
    cyan = "\27[36m",
    white = "\27[37m"
}

local function colorize(text, color)
    return COLORS[color] .. text .. COLORS.reset
end

local function print_error(message)
    io.stderr:write(colorize("ERROR: " .. message .. "\n", "red"))
end

local function print_success(message)
    io.write(colorize("SUCCESS: " .. message .. "\n", "green"))
end

local function print_info(message)
    io.write(colorize(message .. "\n", "cyan"))
end

local function print_verbose(message, verbose)
    if verbose then
        io.write(colorize("VERBOSE: " .. message .. "\n", "yellow"))
    end
end

local function file_exists(file)
    local f = io.open(file, "r")
    if f then
        f:close()
        return true
    end
    return false
end

local function read_file(file)
    local f = io.open(file, "r")
    if not f then
        return nil
    end
    
    local content = f:read("*all")
    f:close()
    return content
end

local function write_file(file, content)
    local f = io.open(file, "w")
    if not f then
        return false
    end
    
    f:write(content)
    f:close()
    return true
end

local function serialize_lua_table(tbl, indent)
    indent = indent or 0
    
    if type(tbl) ~= "table" then
        if type(tbl) == "string" then
            return string.format("%q", tbl)
        else
            return tostring(tbl)
        end
    end
    
    local spaces = string.rep(" ", indent)
    local result = "{\n"
    
    for k, v in pairs(tbl) do
        local key_str = type(k) == "number" and "[" .. k .. "]" or "[" .. string.format("%q", k) .. "]"
        result = result .. spaces .. "  " .. key_str .. " = " .. serialize_lua_table(v, indent + 2) .. ",\n"
    end
    
    return result .. spaces .. "}"
end

local function table_to_json(tbl)
    if type(tbl) ~= "table" then
        if type(tbl) == "string" then
            return '"' .. tbl:gsub('"', '\\"') .. '"'
        elseif type(tbl) == "boolean" or type(tbl) == "number" then
            return tostring(tbl)
        else
            return "null"
        end
    end
    
    local isArray = true
    local n = 0
    for k, _ in pairs(tbl) do
        n = n + 1
        if type(k) ~= "number" or k ~= n then
            isArray = false
            break
        end
    end
    
    local result
    if isArray then
        result = "["
        for i, v in ipairs(tbl) do
            if i > 1 then result = result .. ", " end
            result = result .. table_to_json(v)
        end
        result = result .. "]"
    else
        result = "{"
        local first = true
        for k, v in pairs(tbl) do
            if not first then result = result .. ", " end
            first = false
            result = result .. '"' .. tostring(k) .. '": ' .. table_to_json(v)
        end
        result = result .. "}"
    end
    
    return result
end

local function get_default_output_file(input_file)
    return input_file .. ".output.lua"
end

local function handle_parse(args, verbose)
    if #args < 1 then
        print_error("Missing input file for parse command")
        print_info("Usage: " .. COMMANDS.parse.usage)
        return false
    end
    
    local input_file = args[1]
    local output_file = nil
    local format = "lua" -- Default format
    local output_type = "both" -- Default output type
    
    local i = 2
    while i <= #args do
        local arg = args[i]
        if arg:match("^%-%-") then
            if arg:match("^%-%-format=(%w+)$") then
                format = arg:match("^%-%-format=(%w+)$")
                if format ~= "json" and format ~= "lua" then
                    print_error("Invalid format. Supported formats: json, lua")
                    return false
                end
            elseif arg:match("^%-%-output=(%w+)$") then
                output_type = arg:match("^%-%-output=(%w+)$")
                if output_type ~= "ast" and output_type ~= "tokens" and output_type ~= "both" then
                    print_error("Invalid output type. Supported types: ast, tokens, both")
                    return false
                end
            else
                print_error("Invalid argument: " .. arg)
                print_info("Usage: " .. COMMANDS.parse.usage)
                return false
            end
        else
            if not output_file then
                output_file = arg
            else
                print_error("Too many arguments. Unexpected: " .. arg)
                print_info("Usage: " .. COMMANDS.parse.usage)
                return false
            end
        end
        i = i + 1
    end
    
    if not output_file then
        output_file = get_default_output_file(input_file)
        print_verbose("No output file specified, using default: " .. output_file, verbose)
    end
    
    if not file_exists(input_file) then
        print_error("Input file does not exist: " .. input_file)
        return false
    end
    
    print_verbose("Reading input file: " .. input_file, verbose)
    local content = read_file(input_file)
    if not content then
        print_error("Failed to read input file: " .. input_file)
        return false
    end
    
    if content == "" then
        print_error("Input file is empty")
        return false
    end
    
    print_verbose("File content length: " .. #content .. " bytes", verbose)
    print_verbose("Parsing Lua code...", verbose)
    
    if verbose then
        print_verbose("Input code:", verbose)
        local line_num = 1
        for line in content:gmatch("[^\r\n]+") do
            print_verbose(string.format("  %d: %s", line_num, line), verbose)
            line_num = line_num + 1
        end
    end
    
    local tokens = lexer.tokenize(content)
    if verbose then
        print_verbose("Tokens:", verbose)
        print_verbose("  Count: " .. #tokens, verbose)
        for i, token in ipairs(tokens) do
            if i <= 10 then
                print_verbose(string.format("  %d: %s [%s]", i, token.type, tostring(token.value) or ""), verbose)
            end
        end
        if #tokens > 10 then
            print_verbose("  ... and " .. (#tokens - 10) .. " more", verbose)
        end
        
        print_verbose("Full token list:", verbose)
        for i, token in ipairs(tokens) do
            print_verbose(string.format("  %d: %s [%s] at line %d, col %d", 
                i, token.type, tostring(token.value) or "", token.line, token.col), verbose)
        end
    end
    
    local ast, errors
    if output_type == "ast" or output_type == "both" then
        ast, errors = parser.parse(content)
        
        if errors and #errors > 0 then
            print_error("Parse errors found:")
            for i, err in ipairs(errors) do
                print_error(string.format("  %d. Line %d, Col %d: %s", i, err.line, err.col, err.message))
            end
            print_verbose("AST may be incomplete due to errors", verbose)
        else
            print_verbose("No syntax errors found", verbose)
        end
        
        if verbose then
            print_verbose("AST structure:", verbose)
            if ast and ast.body then
                print_verbose("  Number of statements: " .. #(ast.body or {}), verbose)
                for i, node in ipairs(ast.body or {}) do
                    print_verbose("  Statement " .. i .. " type: " .. (node.type or "unknown"), verbose)
                end
            else
                print_verbose("  AST has no body or is empty", verbose)
            end
        end
    end
    
    print_verbose("Generating " .. format:upper() .. " output...", verbose)
    local output
    
    if output_type == "ast" then
        if format == "json" then
            output = table_to_json(ast)
        else
            output = "return " .. serialize_lua_table(ast)
        end
    elseif output_type == "tokens" then
        if format == "json" then
            output = table_to_json(tokens)
        else
            output = "return " .. serialize_lua_table(tokens)
        end
    else 
        local ast_output, tokens_output
        if format == "json" then
            ast_output = table_to_json(ast)
            tokens_output = table_to_json(tokens)
            output = "{\n  \"ast\": " .. ast_output .. ",\n  \"tokens\": " .. tokens_output .. "\n}"
        else
            ast_output = serialize_lua_table(ast)
            tokens_output = serialize_lua_table(tokens)
            output = "return {\n  ast = " .. ast_output .. ",\n  tokens = " .. tokens_output .. "\n}"
        end
    end
    
    print_verbose("Writing to output file: " .. output_file, verbose)
    if not write_file(output_file, output) then
        print_error("Failed to write to output file: " .. output_file)
        return false
    end
    
    local success_message = "Generated successfully and saved to: " .. output_file
    if output_type == "ast" then
        print_success("AST " .. success_message)
    elseif output_type == "tokens" then
        print_success("Tokens " .. success_message)
    else
        print_success("AST and tokens " .. success_message)
    end
    
    return true
end

local function handle_format(args, verbose)
    if #args < 1 then
        print_error("Missing input file")
        print_info("Usage: " .. COMMANDS.format.usage)
        return false
    end
    
    local input_file = args[1]
    local output_file = nil
    local style = "default"
    local config_file = nil
    local debug_ast = false
    
    local i = 2
    while i <= #args do
        if args[i]:match("^%-%-style=") then
            style = args[i]:match("^%-%-style=(.+)$")
        elseif args[i]:match("^%-%-config=") then
            config_file = args[i]:match("^%-%-config=(.+)$")
        elseif args[i] == "--debug-ast" then
            debug_ast = true
            print_verbose("AST debugging enabled", verbose)
        elseif not output_file and not args[i]:match("^%-%-") then
            output_file = args[i]
        end
        i = i + 1
    end
    
    if not output_file then
        output_file = input_file .. ".formatted.lua"
        print_verbose("No output file specified, using default: " .. output_file, verbose)
    end
    
    if not file_exists(input_file) then
        print_error("Input file does not exist: " .. input_file)
        return false
    end
    
    print_verbose("Reading input file: " .. input_file, verbose)
    local content = read_file(input_file)
    if not content then
        print_error("Failed to read input file: " .. input_file)
        return false
    end
    
    if content == "" then
        print_error("Input file is empty: " .. input_file)
        return false
    end
    
    print_verbose("Formatting Lua code with style: " .. style, verbose)
    
    local config
    if config_file then
        print_verbose("Loading config from file: " .. config_file, verbose)
        local cfg, err = formatter_config.load(config_file)
        if not cfg then
            print_error("Failed to load config file: " .. err)
            return false
        end
        config = cfg
    else
        if formatter.PRESETS and formatter.PRESETS[style] then
            config = formatter.PRESETS[style]
        else
            config = formatter.DEFAULT_CONFIG
        end
    end
    
    local fmt = formatter.create(config)
    local formatted, err
    
    local pipeline_options = {
        config = config,
        minify = (style == "minify"),
        debug_ast = debug_ast
    }
    
    local formatter_pipeline = require("ast_custom.formatter_pipeline")
    
    if style == "rmcomments" then
        formatted, err = formatter_pipeline.remove_comments(content, input_file, config)
    else
        formatted, err = formatter_pipeline.run(content, input_file, pipeline_options)
    end
    
    if not formatted then
        print_error("Formatting failed: " .. tostring(err))
        return false
    end
    
    print_verbose("Writing formatted code to: " .. output_file, verbose)
    if not write_file(output_file, formatted) then
        print_error("Failed to write output file: " .. output_file)
        return false
    end
    
    print_success("Lua code formatted successfully and saved to: " .. output_file)
    return true
end

local function handle_config(args, verbose)
    if #args < 1 then
        print_error("Missing output file")
        print_info("Usage: " .. COMMANDS.config.usage)
        return false
    end
    
    local output_file = args[1]
    local preset = "default"
    
    local i = 2
    while i <= #args do
        if args[i]:match("^%-%-preset=") then
            preset = args[i]:match("^%-%-preset=(.+)$")
        end
        i = i + 1
    end
    
    print_verbose("Creating formatter configuration with preset: " .. preset, verbose)
    
    local config
    if formatter.PRESETS and formatter.PRESETS[preset] then
        config = formatter.PRESETS[preset]
    else
        config = formatter.DEFAULT_CONFIG
    end

    if not config then
        print_error("Invalid preset: " .. preset)
        print_info("Available presets: default, compact, expanded, minify, rmcomments")
        return false
    end
    
    print_verbose("Writing config to: " .. output_file, verbose)
    local success, err = formatter_config.save(config, output_file)
    
    if not success then
        print_error("Failed to write config file: " .. tostring(err))
        return false
    end
    
    print_success("Formatter configuration saved to: " .. output_file)
    return true
end

local function handle_version()
    print_info("NexusScripts Lua Parser v1.0")
    print_info("Developed by NexusScripts")
    print_info("Copyright © 2025 NexusScripts")
    print_info("All rights reserved.")
    print_info("This software is licensed under the MIT License.")
    return true
end

local function handle_help(args)
    if #args == 0 then
        print_info("Available commands:")
        for cmd_name, cmd_info in pairs(COMMANDS) do
            print_info("  " .. cmd_name .. " - " .. cmd_info.desc)
            print_info("      Usage: " .. cmd_info.usage)
        end
        
        print_info("\nShortcut usage:")
        print_info("  lua cli.lua <input_file>                      # Directly parse a file with default settings (creates a .lua output file containing both the AST and tokens as Lua tables)")
        
        print_info("\nExamples:")
        print_info("  lua cli.lua parse input.lua                         # Parse and output to input.lua.output.lua")
        print_info("  lua cli.lua parse input.lua output.json --format=json    # Parse and output JSON")
        print_info("  lua cli.lua parse input.lua --output=tokens             # Output only tokens")
        print_info("  lua cli.lua format input.lua                        # Format with default style")
        print_info("  lua cli.lua format input.lua --style=compact         # Format with compact style")
        print_info("  lua cli.lua format input.lua --style=minify          # Minify the code")
        print_info("  lua cli.lua format input.lua --style=rmcomments      # Remove all comments from the code")
        print_info("  lua cli.lua config formatter.conf --preset=expanded   # Create config file with expanded preset")
        print_info("  lua cli.lua format input.lua --config=formatter.conf   # Format using custom config")
    else
        local cmd_name = args[1]
        local cmd_info = COMMANDS[cmd_name]
        if cmd_info then
            print_info(cmd_name .. " - " .. cmd_info.desc)
            print_info("Usage: " .. cmd_info.usage)
            
            if cmd_name == "format" then
                print_info("\nFormat Options:")
                print_info("  --style=<style>       Set formatting style (default, compact, expanded, minify, rmcomments)")
                print_info("  --config=<file>       Use custom configuration file")
                print_info("  --debug-ast           Print AST structure to console for debugging")
                print_info("  --verbose             Show detailed information during formatting")
                print_info("\nThe 'rmcomments' style intelligently removes all comments while preserving code structure.")
            elseif cmd_name == "parse" then
                print_info("\nParse Options:")
                print_info("  --format=<format>     Output format (json, lua)")
                print_info("  --output=<type>       What to output (ast, tokens, both)")
                print_info("  --verbose             Show detailed information during parsing")
            elseif cmd_name == "config" then
                print_info("\nConfig Options:")
                print_info("  --preset=<preset>     Which preset to use (default, compact, expanded, minify, rmcomments)")
            end
        else
            print_error("Unknown command: " .. cmd_name)
            return false
        end
    end
    return true
end

function cli.run(args)
    io.write(COLORS.cyan .. LOGO .. COLORS.reset)
    io.write("\n")
    
    if #args == 0 then
        return handle_help({})
    end
    
    local command = args[1]
    table.remove(args, 1)
    
    local verbose = false
    for i, arg in ipairs(args) do
        if arg == "--verbose" then
            verbose = true
            table.remove(args, i)
            break
        end
    end
    
    if command == "parse" then
        return handle_parse(args, verbose)
    elseif command == "format" then
        return handle_format(args, verbose)
    elseif command == "config" then
        return handle_config(args, verbose)
    elseif command == "version" then
        return handle_version()
    elseif command == "help" then
        return handle_help(args)
    elseif file_exists(command) then
        print_verbose("Detected file path, processing with default settings", verbose)
        return handle_parse({command}, verbose)
    else
        print_error("Unknown command or file not found: " .. command)
        print_info("Use 'help' to see available commands and usage examples")
        return false
    end
end

if arg and arg[0] and arg[0]:match("cli.lua$") then
    local args = {}
    for i = 1, #arg do
        args[i] = arg[i]
    end
    local success = cli.run(args)
    os.exit(success and 0 or 1)
end

return cli
