
clear @a[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] glass_bottle

execute as @a[team=lobby] run function lobby:loop/everysec

tag @a remove msg_cooldown
schedule function core:global/loop/everysec 1s

