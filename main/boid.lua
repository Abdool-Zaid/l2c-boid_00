local res = {}
local map={}
local target_mass
    res.speed = 4
function res.check(flock)
   
    init(flock)
    test_1(flock)
    test_2(flock)
    test_3(flock)
    
end

function init(pop)
    target_mass ={tar().x,tar().y}
    table.insert(map,target_mass)
    for key, value in pairs(pop) do
        local x = value.CoorX
        local y = value.CoorY
        table.insert(map,{key,x,y})
    end
    
end
 function tar()
    local x,y = love.mouse.getPosition()
    local res={}
        res.x=x
        res.y=y
    return res
 end

function test_1(flock)
    -- travel to center of mass
        for _, value in pairs(flock) do
            local dirX = tar().x - value.CoorX
            local dirY = tar().y - value.CoorY
                dirX = dirX <0 and -1 or 1
                dirY = dirY <0 and -1 or 1

            local vec = {(dirX * res.speed), (dirY * res.speed)}

            value.CoorX= value.CoorX + vec[1]
            value.CoorY= value.CoorY + vec[2]


        end

end

function test_2(pop)
    -- match vectors
    
end
function test_3(pop)
    -- no collisions
    
end

return res