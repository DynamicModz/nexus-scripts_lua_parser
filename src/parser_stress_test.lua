local expr1 = (((1 + 2) * 3 - (4 / 2)) ^ 2) % 10 + 
             (3 & 7 | 2) * ((1 << 2) >> 1) // 3

local table1 = {
    [1 + 2 * 3] = 4 ^ 2 % 3,
    ["key" .. (1 + 2)] = { 
        nested = {
            [true] = function(x) return x * 2 end
        },
        value = 10 << 2
    },
    method = function(self, x)
        return function(y) 
            return function(z) 
                return x + y + z 
            end
        end
    end
}

local obj = {
    chain = function(self)
        return {
            method1 = function(self)
                return {
                    method2 = function(self, x)
                        return {
                            method3 = function(self, y)
                                return x + y
                            end
                        }
                    end
                }
            end
        }
    end
}

local result1 = string.gsub(
    table.concat(
        {
            string.rep("a", 2 + 3),
            string.sub("hello", 2, -2),
            5 > 3 and "true" or "false"
        }, 
        "-"
    ),
    "(%w+)",
    function(word)
        return string.upper(word:sub(1, 1)) .. 
               string.lower(word:sub(2))
    end
)

local result2 = (10 > 5 and {
    value = 5 < 8 and (
        function()
            if 3 < 4 then
                return "nested1"
            else
                return "nested2"
            end
        end
    )() or "default"
} or {
    fallback = true
}).value

local deep_table = {a = {b = {c = {d = {e = {f = {g = 10}}}}}}}
local deep_value = deep_table.a.b.c.d.e.f.g

local mixed_ops = -((not (5 > 3)) and -(-5)) * (3 & 7)

local counter = (function(start)
    local count = start
    return function()
        count = count + 1
        return function()
            return count
        end
    end
end)(10)

local co = coroutine.create(function()
    return (function()
        return "result from coroutine"
    end)()
end)

local chained = 1 < 2 and 2 < 3 and 3 < 4 and 4 < 5

local logic_nest = (5 > 3 and (4 < 7 or (2 > 1 and (6 < 10 or 3 > 1))))

local combined = ((5 + 3) * 2 - (10 / 2)) + 
                (function(x) return x * 2 end)(5) +
                (#"test" >= 4 and 10 or 5) *
                ({value = 10}).value 