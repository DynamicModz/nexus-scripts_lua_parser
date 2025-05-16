#!/usr/bin/env lua
--[[
    nexusscripts Lua Parser - Command Line Interface
    Dev: NexusScripts
]]

package.path = package.path .. ";./?.lua"
local parser = require("ast_custom.parser")
local lexer = require("ast_custom.lexer")

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
        usage = "parse <input_file> <output_file> [--format=json|lua]"
    },
    help = {
        desc = "Show help information",
        usage = "help [command]"
    },
    version = {
        desc = "Show version information",
        usage = "version"
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

local function handle_parse(args, verbose)
    if #args < 2 then
        print_error("Missing arguments for parse command")
        print_info("Usage: " .. COMMANDS.parse.usage)
        return false
    end
    
    local input_file = args[1]
    local output_file = args[2]
    
    local format = "json"
    local format_arg = args[3]
    if format_arg then
        if format_arg:match("^%-%-format=(%w+)$") then
            format = format_arg:match("^%-%-format=(%w+)$")
            if format ~= "json" and format ~= "lua" then
                print_error("Invalid format. Supported formats: json, lua")
                return false
            end
        else
            print_error("Invalid format argument. Use --format=json or --format=lua")
            return false
        end
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
    
    local ast, errors = parser.parse(content)
    
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
    
    print_verbose("Generating " .. format:upper() .. " output...", verbose)
    local output
    if format == "json" then
        output = table_to_json(ast)
    else
        output = "return " .. serialize_lua_table(ast)
    end
    
    print_verbose("Writing to output file: " .. output_file, verbose)
    if not write_file(output_file, output) then
        print_error("Failed to write to output file: " .. output_file)
        return false
    end
    
    print_success("AST generated successfully and saved to: " .. output_file)
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
        
        print_info("\nExamples:")
        print_info("  ./NexusScripts parse input.lua output.json         # Parse a Lua file and output JSON")
        print_info("  ./NexusScripts parse input.lua output.lua --format=lua    # Parse and output Lua")
        print_info("  ./NexusScripts parse input.lua output.json --verbose      # Enable verbose output")
    else
        local cmd_name = args[1]
        local cmd_info = COMMANDS[cmd_name]
        if cmd_info then
            print_info(cmd_name .. " - " .. cmd_info.desc)
            print_info("Usage: " .. cmd_info.usage)
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
    elseif command == "version" then
        return handle_version()
    elseif command == "help" then
        return handle_help(args)
    else
        print_error("Unknown command: " .. command)
        print_info("Use 'help' to see available commands")
        return false
    end
end

if arg and arg[0] and arg[0]:match("cli.lua$") then
    local success = cli.run(arg)
    os.exit(success and 0 or 1)
end

return cli
