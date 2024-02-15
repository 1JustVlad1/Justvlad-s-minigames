execute if entity @s[tag=lobby] if block ~ ~-2 ~ air run function debug:summon/remove/lobby
execute if entity @s[tag=sign] if block ~ ~ ~ air run function debug:summon/remove/sign

execute if entity @s[tag=loopeverysec] if block ~ ~-1 ~ air run function debug:summon/remove/loopeverysec