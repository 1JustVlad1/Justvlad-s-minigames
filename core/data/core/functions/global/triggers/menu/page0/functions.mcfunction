execute if score @s menu matches -10001 run function control:short_game_name_1/start
execute if score @s menu matches -10002 run function control:short_game_name_1/stop
execute if score @s menu matches -10003 run scoreboard players set active sgn1.settings 1
execute if score @s menu matches -10004 run scoreboard players set active sgn1.settings 0