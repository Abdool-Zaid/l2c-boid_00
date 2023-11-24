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

                object.ball = {}
                  object.ball.body = love.physics.newBody(World, object.CoorX, object.CoorY, "dynamic")
                  object.ball.shape = love.physics.newCircleShape( object.radius)
                  object.ball.fixture = love.physics.newFixture(  object.ball.body,   object.ball.shape, 1)
                  object.ball.fixture:setRestitution(0.9) 
                
                
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
            local x, y = love.math.random(width_x) ,love.math.random(height_y)
           local ind = boid.new(x,y)
            table.insert(boids, ind)
        end
        
        res.target.body=love.physics.newBody(World,res.target.CoorX,res.target.CoorX,"dynamic")
        res.target.shape=love.physics.newCircleShape(res.target.radius)
        res.target.fixture= love.physics.newFixture(res.target.body,res.target.shape,res.target.radius)
        return boids
    end
    
        function res.draw_user()
            love.graphics.setColor(res.target.colour[1],res.target.colour[2],res.target.colour[3])
            love.graphics.circle("fill", res.target.CoorX, res.target.CoorY, res.target.shape:getRadius())
        end

        function res.draw_boids(boids)
            
            for _, value in pairs(boids) do
                love.graphics.setColor(value.colour[1],value.colour[2],value.colour[3])
                love.graphics.circle("fill", value.ball.body:getX(), value.ball.body:getY(), value.ball.shape:getRadius())
            end

        end


return res