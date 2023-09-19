local res = {}
local map={}
    res.speed = 4
function res.check(destinationX,destinationY,flock)
    local pop= flock
    init(destinationX,destinationY,pop)
    test_1(pop)
   
    
end

function init(x,y,pop)
    local target_mass={x,y}
    table.insert(map,target_mass)
    for key, value in pairs(pop) do
        local x = value.CoorX
        local y = value.CoorY
        table.insert(map,{key,x,y})
    end
    
end
function test_1(flock)
    -- travel to center of mass
   local pop = flock
    local mass = {}
        mass.x= map[1][1]
        mass.y= map[1][2]

        for _, value in pairs(pop) do
            local dirX = mass.x - value.CoorX
            local dirY = mass.y - value.CoorY
                dirX = dirX <0 and -1 or 1
                dirY = dirY <0 and -1 or 1

            local vec = {(dirX * res.speed), (dirY * res.speed)}

            value.CoorX= value.CoorX + vec[1]
            value.CoorY= value.CoorY + vec[2]


        end

end

function test_2()
    -- match vectors
    
end
function test_3()
    -- no collisions
    
end

return res