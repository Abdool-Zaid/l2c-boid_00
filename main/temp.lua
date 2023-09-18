local obj = require("objects")
local pop = obj.init_boids(14)

    for _, value in pairs(pop) do
        print(value.CoorX)
    end
