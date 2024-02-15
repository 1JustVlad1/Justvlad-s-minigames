
execute unless score @s team matches 1.. run team join lobby @s
execute if score @s team matches 1 run team join sgn1.red @s
execute if score @s team matches 2 run team join sgn1.green @s
execute if score @s team matches 3 run team join sgn1.blue @s
execute if score @s team matches 4 run team join sgn1.yellow @s
execute if score @s team matches 5 run team join sgn1.dark_red @s
execute if score @s team matches 6 run team join sgn1.dark_green @s
execute if score @s team matches 7 run team join sgn1.dark_blue @s
execute if score @s team matches 8 run team join sgn1.gold @s

execute if score @s gamemode matches 0 run gamemode survival @s
execute if score @s gamemode matches 1 run gamemode creative @s
execute if score @s gamemode matches 2 run gamemode adventure @s
execute if score @s gamemode matches 3 run gamemode spectator @s