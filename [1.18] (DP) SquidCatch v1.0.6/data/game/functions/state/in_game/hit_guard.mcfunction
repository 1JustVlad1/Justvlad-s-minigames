advancement revoke @s only game:hit_guard
playsound minecraft:entity.turtle.death master @s ~ ~ ~ 1000 1
execute as @e[nbt={HurtTime:10s}] at @s run tp @s ~ ~-1000 ~
execute as @e[nbt={HurtTime:10s}] at @s run kill @s