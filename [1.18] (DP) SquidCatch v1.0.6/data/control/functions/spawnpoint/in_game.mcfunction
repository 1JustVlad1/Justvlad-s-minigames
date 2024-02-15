tag @s add tmp
execute as @e[tag=spawn] positioned as @s if score @s map = map settings run spawnpoint @a[tag=tmp]
tag @s remove tmp