local boid_logic = require("boid")
local res = {}

    res.target = {
                    radius = 7;
                    colour = {0.6,0.2,0.6};
                    CoorX = -1;
                    CoorY = -1;
                 }

    local  boid={}

    function boid.new(x,y)
            local object = {
                    radius = 3;
                    colour = {0.1,0.7,0.2 };
                
                }
                 object.CoorX =x
                 object.CoorY = y
                setmetatable(object,self)       

                return object

             end

            function boid:check_algo(x,y,flock)
                boid_logic.check(x,y,flock)
            end


    function res.init_boids(population_size)
        local boids= {}
        local width_x= love.graphics.getWidth()
        local height_y = love.graphics.getHeight()
        local pop = population_size
        for i = 1, pop, 1 do
            local x, y = math.random(width_x) ,math.random(height_y)
           local ind = boid.new(x,y)
            table.insert(boids, ind)
        end
        
        return boids
    end
    
        function res.draw_user()
            love.graphics.setColor(res.target.colour[1],res.target.colour[2],res.target.colour[3])
            love.graphics.circle("fill", res.target.CoorX, res.target.CoorY, res.target.radius)
        end

        function res.draw_boids(boids)
            
            for _, value in pairs(boids) do
                love.graphics.setColor(value.colour[1], value.colour[2], value.colour[3])
                love.graphics.circle("fill", value.CoorX, value.CoorY , value.radius)                
            end

        end


return res