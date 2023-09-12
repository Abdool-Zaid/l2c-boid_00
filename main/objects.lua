 local Rand = require("ran_gen")
local res = {}

    res.target = {
                    radius = 7;
                    colour = {0.6,0.2,0.6};
                    CoorX = -1;
                    CoorY = -1;
                 }

    res.boid={
                radius = 3;
                colour = {0.2,0.2,0.2};
                CoorX = -1;
                CoorY = -1;
             }

    function res.init_boids(population_size)
        local boids= {}
        for i = 1, population_size, 1 do
           local ind = res.boid
            ind.colour= Rand.color_RGB()
            ind.CoorX = math.random(love.graphics.getWidth())
            ind.CoorY = math.random(love.graphics.getHeight())
            table.insert(boids,ind)
        end
        
        return boids
    end
    
        function res.draw_user()
            love.graphics.setColor(res.target.colour[1],res.target.colour[2],res.target.colour[3])
            love.graphics.circle("fill", res.target.CoorX, res.target.CoorY, res.target.radius)
        end

        function res.draw_boids(boids)
            love.graphics.print(type(boids[1].colour))

            for i = 1, #boids, 1 do
                -- love.graphics.setColor(boids[i].colour[1],boids[i].colour[2],boids[i].colour[3])
                -- love.graphics.circle("fill",boids[i].CoorX,boids[i].CoorY,boids[i].radius)
            
            end
        end


return res