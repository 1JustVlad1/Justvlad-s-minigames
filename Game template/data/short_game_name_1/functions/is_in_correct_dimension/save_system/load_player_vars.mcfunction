
execute unless score @s team matches 1.. run team join lobby @s
execute if score @s team matches 1 run team join sgn1.participant @s

execute if score @s gamemode matches 0 run gamemode survival @s
execute if score @s gamemode matches 1 run gamemode creative @s
execute if score @s gamemode matches 2 run gamemode adventure @s
execute if score @s gamemode matches 3 run gamemode spectator @s