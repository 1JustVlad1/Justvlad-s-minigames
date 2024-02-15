scoreboard players operation @s tmp = @s xp
scoreboard players operation @s calc = @s level
scoreboard players set @s level 0
scoreboard players operation level_requirements tmp = 60 const

function core:player_profile/leveling_system/calc_level

