local function test()

    print("Hello, world!")
    local x = 10
    local y = 20
    local multilineString =  [[
        This is a multi-line string
        It should NOT be removed
        because it's not a comment
    ]]
    local anotherString = "-- This looks like a comment but it's inside a string"
    return x + y
end
print(test())