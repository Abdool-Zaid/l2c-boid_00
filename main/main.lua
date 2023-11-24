World = love.physics.newWorld(0,0,true)
function love.load()
    love.window.setTitle("boid test 01")
    Objects = require("objects")
    UserIO= require('user_input_logic')
    UserIO.init()
    Boids =  Objects.init_boids(10 )
    Flock_logic = require("boid")
end


function love.update(dt)
    Objects.target.CoorX,Objects.target.CoorY = love.mouse.getPosition()
    Flock_logic.check( Boids)
    World:update(dt)
end

function love.draw()
    
    Objects.render(Boids)
 end
 