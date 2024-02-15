

scoreboard players operation @s sgn1.game = game_counter sgn1.game

scoreboard players set @s prev_game 1

execute if entity @s[team=lobby] run scoreboard players set @s team 0
execute if entity @s[team=sgn1.participant] run scoreboard players set @s team 1

execute if entity @s[gamemode=survival] run scoreboard players set @s gamemode 0
execute if entity @s[gamemode=creative] run scoreboard players set @s gamemode 1
execute if entity @s[gamemode=adventure] run scoreboard players set @s gamemode 2
execute if entity @s[gamemode=spectator] run scoreboard players set @s gamemode 3