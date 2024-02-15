execute as @e[tag=spawn] at @s if score @s map = map settings run particle minecraft:dragon_breath ~ ~ ~ 0.2 .2 .2 0 10 force @a[tag=debug]
effect give @a minecraft:saturation 40 120 true

execute if score state game matches 0 run function game:loop/in_lobby
execute if score state game matches 1 run function game:loop/in_game