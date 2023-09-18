local res = {}
local temp_seed= 0
local flop 
local redux

function res.color ()
local digits = {0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f"}

local color= "#"
    for i = 1, 6, 1 do
        color= color .. digits[math.random(16)]
    end
    return color
end
function res.color_RGB()
    local col = {}
        col.r= math.random()
        col.g= math.random()
        col.b= math.random()
    return col
end
 

-- function res.number(Seed)
--     local num = xor_shift(Seed)     
--     return num
    
-- end


--  function xor_shift(init)

--     local state
--     local var = {14,17,5}
--     if temp_seed == 0 then
--             state= init
--             redux = "0."
--         else
--             state= temp_seed
--             flop = 2*(state %2) -1
--             for i = 1, #var, 1 do
--                 var[i] = var[i] +  flop
--                 flop = flop *(var[1] % var[3])
--                 redux = load("return 0.".. state)()

--             end
--     end
--     state = state ~ (state << var[1]) & 0xFFFFFFFF
--     state = state ~ (state >> var[2]) & 0xFFFFFFFF
--     state = state ~ (state << var[3]) & 0xFFFFFFFF
--     temp_seed= state
--         state = load("return " .. redux .. state)()
--     return state
--  end

return res