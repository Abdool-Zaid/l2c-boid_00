local res = {}
res.speed = 4
local target={}
target.x, target.y = love.mouse.getPosition()

function res.check(flock)
   
    test_1(flock)
    
end


function test_1(flock)
    local fl = flock
        
        for _, boid in ipairs(fl) do
            local fx, fy = get_distance(target.x,target.y,boid.ball.body:getX(),boid.ball.body:getY())
            boid.ball.body:applyForce(fx,fy)
            
        end
        print("moved")

end
function get_distance(x1,y1,x2,y2)
    local dx =0
    local dy =0
    dx = (x1-x2)/100
    dy = (y1-y2)/100
    return dx ,dy
end

return res