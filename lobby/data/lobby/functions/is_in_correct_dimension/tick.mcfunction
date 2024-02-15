
execute as @e[type=item,tag=!proccessed] at @s run function lobby:item

execute as @e[type=arrow,nbt={inGround:1b}] in map:lobby run kill @s
