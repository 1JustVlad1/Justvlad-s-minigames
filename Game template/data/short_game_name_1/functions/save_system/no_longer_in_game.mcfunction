execute unless entity @s in map:short_game_name_1 run function short_game_name_1:is_in_correct_dimension/save_system/no_longer_in_game
execute if entity @s store success score dimension bool if entity @s[nbt={Dimension:"map:short_game_name_1"}]

execute if score dimension bool matches 1 run function short_game_name_1:is_in_correct_dimension/save_system/no_longer_in_game
execute if score dimension bool matches 0 run function errors:short_game_name_1/001/save_system/no_longer_in_game
scoreboard players reset dimension bool