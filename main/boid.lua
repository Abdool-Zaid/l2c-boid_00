local res = {}
local map={}
    res.speed = 4
function res.check(destinationX,destinationY,flock)
    init(destinationX,destinationY,flock)
    test_1()
    
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
function test_1()
    -- travel to center of mass
    local mass = {}
        mass.x= map[1][1]
        mass.y= map[1][2]
    for i = 2, #map, 1 do
        local dirX = mass.x - map[i].x
        local dirY = mass.y - map[i].y
        dirX = dirX<0 and -1 or 1
        dirY = dirY<0 and -1 or 1
        local vec = {(dirX* res.speed),(dirY*res.speed)}
        flock[i].CoorX= flock[i].CoorX + vec[1]
        flock[i].CoorY= flock[i].CoorY + vec[2]
    end
    
end
function test_2()
    -- match vectors
    
end
function test_3()
    -- no collisions
    
end

return res