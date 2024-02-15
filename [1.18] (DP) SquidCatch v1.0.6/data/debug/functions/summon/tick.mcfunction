execute if entity @s[tag=spawn,tag=lobby] run function debug:summon/spawn/lobby
execute if entity @s[tag=spawn,tag=all] run function debug:summon/spawn/all

execute if entity @s[tag=center] run function debug:summon/center

execute if entity @s[tag=loopeverysec] run function debug:summon/loopeverysec


tp @s ~ ~-10000 ~