execute as @e[tag=spawn] if score @s map = map settings run tag @s add tmp
execute positioned as @e[tag=tmp,limit=1,sort=random] run tp @s ~ ~ ~ ~ ~
tag @e remove tmp