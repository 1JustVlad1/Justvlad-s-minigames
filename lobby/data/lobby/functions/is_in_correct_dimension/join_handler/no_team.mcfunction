#say player had no team in lobby
effect clear @s
effect give @s minecraft:instant_health 10 10 true
clear @s
attribute @s minecraft:generic.max_health base set 20
gamemode adventure @s
