execute unless entity @s in map:lobby run function lobby:is_in_correct_dimension/item
execute if entity @s store success score dimension bool if predicate lobby:lobby_check

execute if score dimension bool matches 1 run function lobby:is_in_correct_dimension/item
execute if score dimension bool matches 0 run function errors:lobby/001/item
scoreboard players reset dimension bool