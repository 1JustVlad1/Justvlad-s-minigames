execute store result score current gametime run time query gametime
execute store result score calc gametime run scoreboard players operation current gametime -= @s[team=!lobby] sgn1.gametime

execute unless score @s rejoin_timer matches 1.. run function short_game_name_1:save_system/save_player_vars

execute if score calc gametime > rejoin_threshold sgn1.settings run tellraw @s [{"text":"[","color":"gray"},{"nbt":"game_titles[0]","storage":"core:storage","color":"gold"},{"text":"] ","color":"gray"},{"text":"Вы были исключены из игры: Истекло время ожидания для перезахода.","color":"red","italic":false}]



scoreboard players operation @s[team=!lobby] rejoin_timer = rejoin_threshold sgn1.settings
scoreboard players operation @s rejoin_timer -= calc gametime

execute if score calc gametime > rejoin_threshold sgn1.settings run function short_game_name_1:save_system/reset_player_vars

# execute if score calc gametime < rejoin_threshold sgn1.settings run function lobby:join_handler/rejoin_window

