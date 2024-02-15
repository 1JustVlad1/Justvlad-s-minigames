#say player had no team in game#1
effect clear @s
effect give @s minecraft:instant_health 10 10 true
clear @s
attribute @s minecraft:generic.max_health base set 20
execute if score state sgn1.game matches 1 run function short_game_name_1:in_game/join_handler/no_team
execute if score state sgn1.game matches 0 run function short_game_name_1:in_lobby/join_handler/no_team
# function game:no_team
