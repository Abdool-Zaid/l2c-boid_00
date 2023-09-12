local res = {}
    res.radius = 10
    res.speed = 12
    res.colour ={0.6,0.2,0.6}
    res.CoorX, res.CoorY =-1 , 700
        function res.draw_projectile()
            love.graphics.setColor(res.colour[1],res.colour[2],res.colour[3])
            love.graphics.circle("fill", res.CoorX, res.CoorY, res.radius)
            
        end
return res