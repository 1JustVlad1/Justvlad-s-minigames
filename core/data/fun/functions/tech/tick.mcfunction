scoreboard players add @e[tag=jumpscare,scores={timer=1..}] timer 1
execute at @e[tag=jumpscare,scores={timer=60..}] run particle minecraft:smoke ~ ~1.5 ~ 0.2 0.5 0.2 0 60 force @a
kill @e[tag=jumpscare,scores={timer=60..}]

execute as @e[tag=jumpscare,tag=herobrine] at @s facing entity @p feet positioned ^ ^ ^.55 run function fun:tech/lightning