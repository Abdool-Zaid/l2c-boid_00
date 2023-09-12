local res = {}

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
function res.add_variance(input,tolerance)
    local variance = math.random()>5 and 1 or -1
    variance= variance * tolerance
    return input / variance
end    
return res