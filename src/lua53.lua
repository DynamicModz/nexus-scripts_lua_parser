--[[
    Dev : NexusScripts
]]
local num = 42                  -- Integer
local float = 3.14159           -- Decimal float
local hex = 0xFF                -- Hexadecimal integer (255)
local hex_float = 0x1p8         -- Hex float (256.0) - Lua 5.3 feature

local band = 0xFF & 0x0F        -- Bitwise AND: 15
local bor = 0xF0 | 0x0F         -- Bitwise OR: 255 
local bxor = 0xFF ~ 0x0F        -- Bitwise XOR: 240
local bnot = ~0x0F              -- Bitwise NOT: -16
local shl = 1 << 3              -- Shift left: 8
local shr = 0x80 >> 3           -- Shift right: 16

local idiv = 10 // 3            -- Integer division: 3

local function bitwise_ops(a, b)
    local results = {}
    results.band = a & b
    results.bor = a | b
    results.bxor = a ~ b
    results.bnot = ~a
    results.shl = a << 2
    results.shr = a >> 1
    results.idiv = a // b
    return results
end

local complex = ((0xFF & 0x0F) << 2) | ((0xF0 & 0x0F) >> 1)

local pi_hex = 0x1.921fb54442d18p+1

return {
    num = num,
    float = float,
    hex = hex,
    hex_float = hex_float,
    pi_hex = pi_hex,
    bitwise = {
        band = band,
        bor = bor,
        bxor = bxor,
        bnot = bnot,
        shl = shl,
        shr = shr
    },
    idiv = idiv,
    complex = complex,
    lua_version = _VERSION -- Should be "Lua 5.3" or later
}
