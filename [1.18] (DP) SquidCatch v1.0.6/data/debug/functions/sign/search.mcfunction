scoreboard players add @s offset 1
execute if entity @e[type=marker,tag=map_select,distance=...06,limit=1] run function debug:sign/click/map_select
execute if entity @e[type=marker,tag=mode_select,distance=...06,limit=1] run function debug:sign/click/mode_select
execute if entity @e[type=marker,tag=settings,distance=...06,limit=1] run function debug:sign/click/settings

# particle minecraft:ash ~ ~ ~ 0 0 0 0 0 force @a

execute if score @s offset matches 1..65 positioned ^ ^ ^.1 rotated ~ ~ run function debug:sign/search

scoreboard players reset @s offset