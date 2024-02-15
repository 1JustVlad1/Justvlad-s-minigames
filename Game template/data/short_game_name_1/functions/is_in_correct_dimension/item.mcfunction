kill @s[nbt={Item:{tag:{clear:1b}}}]
data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0s
tp @s @p
tag @s add proccessed