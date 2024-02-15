function control:short_game_name_1/tp
execute if entity @e[tag=short_game_name_1,tag=lobby,tag=spawn] run function short_game_name_1:is_in_correct_dimension/join_handler/joined



execute unless entity @e[tag=short_game_name_1,tag=lobby,tag=spawn] run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"nbt":"game_titles[0]","storage":"core:storage","color":"gold"},{"text":"] ","color":"gray"},{"text":"Телепортация отменена: попробуйте позже или обратитесь к оператору.","color":"red"}]
tag @s add msg_cooldown



