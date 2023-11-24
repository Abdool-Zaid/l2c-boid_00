World = love.physics.newWorld(0,0,true)
function love.load()
    love.window.setTitle("boid test 00")
    love.window.setMode(1024, 768)
    Objects = require("objects")
    UserIO= require('user_input_logic')
    UserIO.init()
    Boids =  Objects.init_boids(147 )
    Flock_logic = require("boid")
end


function love.update(dt)
    Objects.target.CoorX,Objects.target.CoorY = love.mouse.getPosition()
    -- Flock_logic.check( Boids)
end

function love.draw()
    
    Objects.draw_user()
    Objects.draw_boids(Boids)

 end
 