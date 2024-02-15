execute at @p positioned ^ ^ ^.55 run tp @s ~ ~ ~ facing entity @p feet
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[1f,0f,0f]}}
execute run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]