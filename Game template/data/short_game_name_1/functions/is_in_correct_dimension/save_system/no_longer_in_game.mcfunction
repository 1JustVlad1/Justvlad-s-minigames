team leave @s
function control:short_game_name_1/tp
function short_game_name_1:save_system/reset_player_vars
tellraw @s [{"text":"[","color":"gray"},{"nbt":"game_titles[0]","storage":"core:storage","color":"gold"},{"text":"] ","color":"gray"},{"text":"Вы были исключены из игры: ID не совпадает","color":"red"}]
