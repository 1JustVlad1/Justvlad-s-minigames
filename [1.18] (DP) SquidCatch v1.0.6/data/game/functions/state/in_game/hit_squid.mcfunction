advancement revoke @s only game:hit_squid


effect give @s instant_damage 1 0 true
effect give @s blindness 3 0 true

playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1000 2
execute if score @s score < punishment settings if score teams settings matches 0 run scoreboard players set @s score 0
execute if score @s score >= punishment settings if score teams settings matches 0 run scoreboard players operation @s score -= punishment settings

execute if entity @s[team=red] if score red score < punishment settings if score teams settings matches 1.. run scoreboard players set red score 0
execute if entity @s[team=red] if score red score >= punishment settings if score teams settings matches 1.. run scoreboard players operation red score -= punishment settings
execute if entity @s[team=green] if score green score < punishment settings if score teams settings matches 1.. run scoreboard players set green score 0
execute if entity @s[team=green] if score green score >= punishment settings if score teams settings matches 1.. run scoreboard players operation green score -= punishment settings
execute if entity @s[team=blue] if score blue score < punishment settings if score teams settings matches 1.. run scoreboard players set blue score 0
execute if entity @s[team=blue] if score blue score >= punishment settings if score teams settings matches 1.. run scoreboard players operation blue score -= punishment settings
execute if entity @s[team=yellow] if score yellow score < punishment settings if score teams settings matches 1.. run scoreboard players set yellow score 0
execute if entity @s[team=yellow] if score yellow score >= punishment settings if score teams settings matches 1.. run scoreboard players operation yellow score -= punishment settings
execute if entity @s[team=dark_red] if score dark_red score < punishment settings if score teams settings matches 1.. run scoreboard players set dark_red score 0
execute if entity @s[team=dark_red] if score dark_red score >= punishment settings if score teams settings matches 1.. run scoreboard players operation dark_red score -= punishment settings
execute if entity @s[team=dark_green] if score dark_green score < punishment settings if score teams settings matches 1.. run scoreboard players set dark_green score 0
execute if entity @s[team=dark_green] if score dark_green score >= punishment settings if score teams settings matches 1.. run scoreboard players operation dark_green score -= punishment settings
execute if entity @s[team=dark_blue] if score dark_blue score < punishment settings if score teams settings matches 1.. run scoreboard players set dark_blue score 0
execute if entity @s[team=dark_blue] if score dark_blue score >= punishment settings if score teams settings matches 1.. run scoreboard players operation dark_blue score -= punishment settings
execute if entity @s[team=gold] if score gold score < punishment settings if score teams settings matches 1.. run scoreboard players set gold score 0
execute if entity @s[team=gold] if score gold score >= punishment settings if score teams settings matches 1.. run scoreboard players operation gold score -= punishment settings

execute as @e[nbt={HurtTime:10s}] at @s run tp @s ~ ~-1000 ~
execute as @e[nbt={HurtTime:10s}] at @s run kill @s