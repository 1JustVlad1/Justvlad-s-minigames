scoreboard players add map_id tmp 1
execute as @e[tag=all] if score @s map = map_id tmp run tag @s add tmp
execute if entity @e[tag=tmp] run data modify block 999999 99 999999 Text3 set value '{"score":{"name":"map_id","objective":"tmp"}}'
execute if entity @e[tag=tmp] run summon marker ~ ~ ~ {Tags:["maps","tmp2"]}
data modify entity @e[tag=tmp2,limit=1] CustomName set from block 999999 99 999999 Text3

tag @e remove tmp
tag @e remove tmp2
execute if score map_id tmp matches ..1001 run function debug:errors/check_maps_loop