local binary = 0b101010
print("Binary:", binary) 

local hex_float = 0x1.8p3 
print("Hex float:", hex_float)

local utf8_string = "A: \u{41}, Omega: \u{03A9}, Snowman: \u{2603}"
print("UTF-8 string:", utf8_string)

local multiline_string = "This is a \z
    continuation of the same line"
print("Multiline with \\z:", multiline_string)

local a, b = 42, 27
print("Bitwise AND:", a & b)
print("Bitwise OR:", a | b)
print("Bitwise XOR:", a ~ b)
print("Bitwise NOT:", ~a)
print("Shift left:", a << 2)
print("Shift right:", a >> 2)

print("Integer division:", 10 // 3)

do
    local file <close> = io.open("test.txt", "w")
    file:write("This file will be automatically closed")
end

local pi <const> = 3.14159
for i = 1 to 10 do
    print("Numeric for with 'to':", i)
end

for i = 10 to 1 step -2 do
    print("Numeric for with 'to' and 'step':", i)
end

do
    local cleanup <toclose> = setmetatable({}, {__close = function() print("Cleanup performed") end})
end 