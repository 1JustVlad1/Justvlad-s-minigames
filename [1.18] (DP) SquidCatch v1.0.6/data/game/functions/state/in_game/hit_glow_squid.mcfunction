advancement revoke @s only game:hit_glow_squid
scoreboard players add @e[nbt={HurtTime:10s},tag=!guarded] hits 1
execute if score @e[nbt={HurtTime:10s},limit=1,tag=!guarded] hits matches 1 run playsound minecraft:entity.witch.hurt master @s ~ ~ ~ 1000 0.9
execute if score @e[nbt={HurtTime:10s},limit=1,tag=!guarded] hits matches 2 run playsound minecraft:entity.witch.hurt master @s ~ ~ ~ 1000 1.1
execute if score @e[nbt={HurtTime:10s},limit=1,tag=!guarded] hits matches 3 run playsound minecraft:entity.witch.hurt master @s ~ ~ ~ 1000 1.3
execute if score @e[nbt={HurtTime:10s},limit=1,tag=!guarded] hits matches 4 run playsound minecraft:entity.witch.hurt master @s ~ ~ ~ 1000 1.5
execute if score @e[nbt={HurtTime:10s},limit=1,tag=!guarded] hits matches 5 run playsound minecraft:entity.witch.hurt master @s ~ ~ ~ 1000 1.7
execute if score @e[nbt={HurtTime:10s},limit=1,tag=!guarded] hits matches 6 run playsound minecraft:entity.witch.hurt master @s ~ ~ ~ 1000 1.9
execute if score @e[nbt={HurtTime:10s},limit=1] hits > hitsRequired settings run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1000 2 0
execute if score @e[nbt={HurtTime:10s},limit=1] hits > hitsRequired settings if score teams settings matches 0 run scoreboard players operation @s score += reward settings

execute if score @e[nbt={HurtTime:10s},limit=1] hits > hitsRequired settings if score teams settings matches 1.. if entity @s[team=red] run scoreboard players operation red score += reward settings
execute if score @e[nbt={HurtTime:10s},limit=1] hits > hitsRequired settings if score teams settings matches 1.. if entity @s[team=green] run scoreboard players operation green score += reward settings
execute if score @e[nbt={HurtTime:10s},limit=1] hits > hitsRequired settings if score teams settings matches 1.. if entity @s[team=blue] run scoreboard players operation blue score += reward settings
execute if score @e[nbt={HurtTime:10s},limit=1] hits > hitsRequired settings if score teams settings matches 1.. if entity @s[team=yellow] run scoreboard players operation yellow score += reward settings
execute if score @e[nbt={HurtTime:10s},limit=1] hits > hitsRequired settings if score teams settings matches 1.. if entity @s[team=dark_red] run scoreboard players operation dark_red score += reward settings
execute if score @e[nbt={HurtTime:10s},limit=1] hits > hitsRequired settings if score teams settings matches 1.. if entity @s[team=dark_green] run scoreboard players operation dark_green score += reward settings
execute if score @e[nbt={HurtTime:10s},limit=1] hits > hitsRequired settings if score teams settings matches 1.. if entity @s[team=dark_blue] run scoreboard players operation dark_blue score += reward settings
execute if score @e[nbt={HurtTime:10s},limit=1] hits > hitsRequired settings if score teams settings matches 1.. if entity @s[team=gold] run scoreboard players operation gold score += reward settings

execute as @e[nbt={HurtTime:10s}] positioned as @s if score @s hits > hitsRequired settings run tp @s ~ ~-1000 ~
execute as @e[nbt={HurtTime:10s}] positioned as @s if score @s hits > hitsRequired settings run kill @s

execute if score squid+ settings matches 1.. at @e[nbt={HurtTime:10s},limit=1,tag=!guarded] run function game:state/in_game/events/random

function control:end_check