execute unless entity @s in map:lobby run function lobby:is_in_correct_dimension/asp
execute if entity @s store success score dimension bool if dimension map:lobby 

execute if score dimension bool matches 1 run function lobby:is_in_correct_dimension/asp
execute if score dimension bool matches 0 run function errors:lobby/001/asp
scoreboard players reset dimension bool

