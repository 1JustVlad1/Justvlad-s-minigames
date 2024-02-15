execute unless entity @s in map:short_game_name_1 run function short_game_name_1:is_in_correct_dimension/item
execute if entity @s store success score dimension bool if predicate short_game_name_1:game_1_check

execute if score dimension bool matches 1 run function short_game_name_1:is_in_correct_dimension/item
execute if score dimension bool matches 0 run function errors:short_game_name_1/001/item
scoreboard players reset dimension bool