

scoreboard players operation @s sgn1.game = game_counter sgn1.game

scoreboard players set @s prev_game 1

execute if entity @s[team=lobby] run scoreboard players set @s team 0
execute if entity @s[team=sgn1.red] run scoreboard players set @s team 1
execute if entity @s[team=sgn1.r_red] run scoreboard players set @s team 1
execute if entity @s[team=sgn1.nr_red] run scoreboard players set @s team 1
execute if entity @s[team=sgn1.green] run scoreboard players set @s team 2
execute if entity @s[team=sgn1.r_green] run scoreboard players set @s team 2
execute if entity @s[team=sgn1.nr_green] run scoreboard players set @s team 2
execute if entity @s[team=sgn1.blue] run scoreboard players set @s team 3
execute if entity @s[team=sgn1.r_blue] run scoreboard players set @s team 3
execute if entity @s[team=sgn1.nr_blue] run scoreboard players set @s team 3
execute if entity @s[team=sgn1.yellow] run scoreboard players set @s team 4
execute if entity @s[team=sgn1.r_yellow] run scoreboard players set @s team 4
execute if entity @s[team=sgn1.nr_yellow] run scoreboard players set @s team 4
execute if entity @s[team=sgn1.dark_red] run scoreboard players set @s team 5
execute if entity @s[team=sgn1.r_dark_red] run scoreboard players set @s team 5
execute if entity @s[team=sgn1.nr_dark_red] run scoreboard players set @s team 5
execute if entity @s[team=sgn1.dark_green] run scoreboard players set @s team 6
execute if entity @s[team=sgn1.r_dark_green] run scoreboard players set @s team 6
execute if entity @s[team=sgn1.nr_dark_green] run scoreboard players set @s team 6
execute if entity @s[team=sgn1.dark_blue] run scoreboard players set @s team 7
execute if entity @s[team=sgn1.r_dark_blue] run scoreboard players set @s team 7
execute if entity @s[team=sgn1.nr_dark_blue] run scoreboard players set @s team 7
execute if entity @s[team=sgn1.r_gold] run scoreboard players set @s team 8
execute if entity @s[team=sgn1.nr_gold] run scoreboard players set @s team 8
execute if entity @s[team=sgn1.gold] run scoreboard players set @s team 8

execute if entity @s[gamemode=survival] run scoreboard players set @s gamemode 0
execute if entity @s[gamemode=creative] run scoreboard players set @s gamemode 1
execute if entity @s[gamemode=adventure] run scoreboard players set @s gamemode 2
execute if entity @s[gamemode=spectator] run scoreboard players set @s gamemode 3