local res = {}
res.speed = 4
local target={}

function res.check(flock)
    
    test_1(flock)
    
end

local iter =0
function test_1(flock)
    target.x, target.y = love.mouse.getPosition()
    local fl = flock
        
        for index, boid in ipairs(fl) do
            local fx, fy = get_distance(target.x,target.y,boid.ball.body:getX(),boid.ball.body:getY())
            boid.ball.body:applyForce(fx,fy)
            iter = index
        end
        -- print(iter)

end
function get_distance(x1,y1,x2,y2)
    local dx =0
    local dy =0
    dx = (x1-x2)
    dy = (y1-y2)
    return dx ,dy
end

return res