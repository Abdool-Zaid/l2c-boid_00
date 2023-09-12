function love.load()
    love.window.setTitle("brick breaker")
    Score= 0
    love.window.setMode(1024, 768)
    Projectile = require("projectile")
   UserIO= require('user_input_logic')
   UserIO.init()
end
function love.update(dt)
    Projectile.CoorX = love.mouse.getPosition()
    
end

function love.draw()
    Projectile.draw_projectile()
 end
 