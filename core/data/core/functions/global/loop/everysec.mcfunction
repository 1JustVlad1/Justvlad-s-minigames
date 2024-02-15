
clear @a[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] glass_bottle

execute as @a[team=lobby] at @s run function lobby:loop/everysec
execute as @a[predicate=short_game_name_1:game_1_check] at @s run function short_game_name_1:loop/everysec
tag @a remove msg_cooldown
schedule function core:global/loop/everysec 1s

