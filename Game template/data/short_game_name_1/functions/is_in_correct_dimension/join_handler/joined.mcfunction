execute if score state sgn1.game matches 1 run function short_game_name_1:in_game/join_handler/joined
execute if score state sgn1.game matches 0 run function short_game_name_1:in_lobby/join_handler/joined
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 2


execute if score @s sgn1 matches 1 run team leave @s


execute if score @s rejoin matches 1 run function short_game_name_1:save_system/load_player_vars
execute if score @s rejoin matches 1 run scoreboard players reset @s[team=!lobby] rejoin_timer
