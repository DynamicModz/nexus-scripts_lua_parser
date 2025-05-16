local name = "User"
local age = 25
local price = 19.99
local is_active = true

print("Hello, welcome to Lua!")
print("Name: " .. name)
print("Age: " .. age)
print("Price: $" .. price)

if is_active then
    print("Status: Active")
else
    print("Status: Inactive")
end

local tax_rate = 0.08
local total_price = price + (price * tax_rate)
print("Total price with tax: $" .. total_price)

local greeting = "Have a " .. "nice " .. "day!"
print(greeting)
