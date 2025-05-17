#!/usr/bin/env lua

--[[
    comment test
]]

print("CLI Calculator - Type 'exit' to quit")
print("Enter expressions like: 2 + 2, 10 * 5, etc.")
print("Supported operations: +, -, *, /, ^ (power), % (modulo)")
print("-----------------------------------------")
print("Type exit or quit to exit the calculator.")
print("=========================================")

local function calculate(expression)
    if not expression or expression == "" then
        return "Error: Empty expression"
    end
    
    local status, result = pcall(function()
        local func = load("return " .. expression)
        if func then
            return func()
        else
            return nil, "Invalid expression"
        end
    end)
    
    if status then
        if type(result) == "number" then
            return result
        else
            return "Error: Invalid result"
        end
    else
        return "Error: " .. tostring(result)
    end
end

while true do
    io.write("> ")
    local input = io.read()
    
    if input == "exit" or input == "quit" then
        print("Goodbye!")
        break
    end
    
    local result = calculate(input)
    print("= " .. tostring(result))
end