function love.load()
    love.window.setTitle("boid test 00")
    love.window.setMode(1024, 768)
    Objects = require("objects")
   UserIO= require('user_input_logic')
   UserIO.init()
    Boids =  Objects.init_boids(14)
end
function love.update(dt)
    Objects.target.CoorX,Objects.target.CoorY = love.mouse.getPosition()
    
end

function love.draw()
    Objects.draw_user()
    Objects.draw_boids(Boids)

 end
 