local ran = require("ran_gen")
for i = 1, 10, 1 do
seed = os.time()

    seed = ran.number(seed)
    print( seed)
    
end

