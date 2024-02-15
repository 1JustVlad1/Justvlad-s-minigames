
execute store result score id tmp run data get storage short_game_name_1:storage tmp[0]

execute unless data storage short_game_name_1:storage tmp[] run tellraw @s [{"text":"[","color":"gray"},{"nbt":"game_titles[0]","storage":"core:storage","color":"gold"},{"text":"] ","color":"gray"},{"text":"Вы не находитесь в белом списке игры!","color":"red"}]
data remove storage short_game_name_1:storage tmp[0]

execute if score @s id = id tmp run function short_game_name_1:is_in_correct_dimension/join_handler/checks_done

execute if data storage short_game_name_1:storage tmp[] unless score @s id = id tmp run function short_game_name_1:is_in_correct_dimension/join_handler/white_list_check


