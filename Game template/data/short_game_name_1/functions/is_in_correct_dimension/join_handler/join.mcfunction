tellraw @s[predicate=!short_game_name_1:game_1_check,tag=!msg_cooldown] [{"text":"[","color":"gray"},{"nbt":"game_titles[0]","storage":"core:storage","color":"gold"},{"text":"] ","color":"gray"},{"text":"Подготовка телепортации...","color":"gray","italic":true}]

execute if score active sgn1.settings matches 0 run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"nbt":"game_titles[0]","storage":"core:storage","color":"gold"},{"text":"] ","color":"gray"},{"text":"Телепортация отменена: оператор запретил подключение!","color":"red"}]


data modify storage short_game_name_1:storage tmp set from storage short_game_name_1:storage blacklist

execute if score active sgn1.settings matches 1 run function short_game_name_1:is_in_correct_dimension/join_handler/black_list_check

data modify storage short_game_name_1:storage tmp set from storage short_game_name_1:storage whitelist

execute if score active sgn1.settings matches 2 run function short_game_name_1:is_in_correct_dimension/join_handler/white_list_check
