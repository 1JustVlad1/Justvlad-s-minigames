



scoreboard players operation @s tmp -= level_requirements tmp

execute if score @s level < 100 const run scoreboard players add @s level 1

execute if score @s level > @s calc run function core:player_profile/leveling_system/level_up

scoreboard players operation level_requirements calc = level_requirements tmp
scoreboard players operation level_requirements calc /= 10 const
scoreboard players operation level_requirements calc /= 2 const
scoreboard players operation level_requirements tmp += level_requirements calc


execute if score @s tmp matches 1.. run function core:player_profile/leveling_system/calc_level


