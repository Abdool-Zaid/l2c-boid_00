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

function res.number(Seed)
    local num = xor_shift(Seed)
    local vars = {}
    for i = 1, 7, 1 do
        num  =  (math.sqrt(num) % 2)/10
        table.insert(vars,num)
    end
        vars[4]= vars[4]* (vars[7]* 10^5)
        vars[1]= vars[1]/(2^-vars[2])
        vars[3]= vars[3]/(2^-vars[4])
        vars[5]= vars[5]/(2^-vars[6])
        
     num = xor_shift( vars[1]*100,vars[3]*100, vars[5]*10, num)
    return num
    
end


 function xor_shift(s1,s2,s3 ,init)
    s1 = s1 or 13
    s2 = s2 or 17
    s3 = s3 or 5
    init = init or os.time()
     if init < 0 then
    init = init * (10^6)
     end
print(init)

    local  state= init
    state = state ~ (state << 13) & 0xFFFFFFFF
    state = state ~ (state >> 17) & 0xFFFFFFFF
    state = state ~ (state << 5) & 0xFFFFFFFF

    return state
 end
 
return res