
scoreboard players operation xp calc = current gametime 
scoreboard players operation xp calc -= @s gametime 

scoreboard players operation xp calc /= 20 const
scoreboard players operation xp calc /= 60 const
scoreboard players operation xp calc /= 4 const

scoreboard players operation xp tmp = xp calc

function core:player_profile/leveling_system/add_experience
