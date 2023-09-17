local ran = require("ran_gen")
for i = 1, 100, 1 do
Seed = os.time()

    RES = ran.number(Seed)
    print( RES)
    
end

