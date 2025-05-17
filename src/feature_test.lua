local binary_val = 0b101010 
local hex_float = 0x1.8p3
local utf8_str = "Unicode: \u{1F680}"

local a, b = 42, 7
local bitwise_and = a & b
local bitwise_or = a | b
local bitwise_not = ~a
local left_shift = a << 2
local right_shift = a >> 1
local int_division = a // b

local const_var <const> = 100
local mt = {}
function mt.__close(self)
    print("Resource closed")
end

do
    local res <close> = setmetatable({}, mt)
    local alt_res <toclose> = setmetatable({}, mt)
end

local sum = 0
for i = 1, 10, 2 do
    sum = sum + i
end

print("Binary value:", binary_val)
print("Hex float:", hex_float)
print(utf8_str)
print("Bitwise AND:", bitwise_and)
print("Bitwise OR:", bitwise_or)
print("Bitwise NOT:", bitwise_not)
print("Left shift:", left_shift)
print("Right shift:", right_shift)
print("Integer division:", int_division)
print("Const variable:", const_var)
print("Sum of for loop:", sum)