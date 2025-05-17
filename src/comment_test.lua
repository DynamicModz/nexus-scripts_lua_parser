--[[
    This is a test file for the comment removal functionality
    It should be completely removed when using the rmcomments style
]]

-- This is a single line comment that should be removed

--[[ This is a multiline comment on a single line ]]

local function test() -- This comment should be removed
    print("Hello, world!") -- This comment at the end of a line should be removed
    
    -- This comment before code should be removed
    local x = 10
    
    --[[ 
        This multi-line comment 
        should be completely removed
    ]]
    
    local y = 20 --[[ This inline multiline comment should be removed ]]
    
    local multilineString = [[
        This is a multi-line string
        It should NOT be removed
        because it's not a comment
    ]]
    
    local anotherString = "-- This looks like a comment but it's inside a string"
    
    return x + y -- Final comment
end

-- Comment at the end of the file 
print(test())