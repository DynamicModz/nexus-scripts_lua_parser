-- Debug parser script

local function main()
    print("Loading modules...")
    local parser = require("ast_custom.parser")
    local lexer = require("ast_custom.lexer")
    local ast_nodes = require("ast_custom.ast_nodes")
    
    print("Modules loaded successfully!")
    
    local test_code = [[
    local a = 1
    local b = 2
    return a + b
    ]]
    
    print("\nTest code:")
    print(test_code)
    
    print("\nTokenizing...")
    local tokens = lexer.tokenize(test_code)
    print("Tokenization complete! Got " .. (#tokens - 1) .. " tokens (excluding EOF)")
    
    print("\nFirst 10 tokens:")
    for i = 1, math.min(10, #tokens) do
        local t = tokens[i]
        print(string.format("%d: Type=%s, Value=%s, Line=%d, Col=%d", 
              i, t.type, tostring(t.value), t.line, t.col))
    end
    
    print("\nParsing...")
    local ast, errors = parser.parse(test_code)
    
    if #errors > 0 then
        print("\nParsing completed with " .. #errors .. " errors:")
        for i, err in ipairs(errors) do
            print(string.format("Error %d: %s at line %d, col %d", 
                  i, err.message, err.line, err.col))
        end
    else
        print("\nParsing completed successfully!")
    end
    
    print("\nAST root:")
    print(string.format("Type: %s", ast.type))
    print(string.format("Body statements: %d", #ast.body))
    
    return true
end

local ok, err = xpcall(main, function(err)
    print("\nERROR: " .. tostring(err))
    print(debug.traceback(err, 2))
end)

if ok then
    print("\nDebug script completed successfully!")
else
    print("\nDebug script failed!")
end 