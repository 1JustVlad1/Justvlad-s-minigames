tag @s add tmp2
execute as @e[tag=squid,tag=reward] if score @s id = @e[tag=tmp2,limit=1] id run tag @s add found
execute unless entity @e[tag=found] run kill @s
execute as @e[tag=squid,tag=reward] if score @s id = @e[tag=tmp2,limit=1] id at @s as @e[tag=tmp2,limit=1,tag=back] facing entity @s feet rotated ~2 0 positioned ^ ^ ^1 run tp @s ~ ~ ~ facing entity @e[tag=found,limit=1] feet
execute as @e[tag=squid,tag=reward] if score @s id = @e[tag=tmp2,limit=1] id at @s as @e[tag=tmp2,limit=1,tag=forth] facing entity @s feet rotated ~-2 0 positioned ^ ^ ^1 run tp @s ~ ~ ~ facing entity @e[tag=found,limit=1] feet
execute as @e[tag=squid,tag=reward] if score @s id = @e[tag=tmp2,limit=1] id run tag @s add guarded

tag @s remove tmp2
tag @e remove found