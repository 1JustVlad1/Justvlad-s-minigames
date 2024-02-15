scoreboard players operation tmp calc = rejoin_threshold sgn1.settings

scoreboard players operation tmp calc /= 20 const
scoreboard players operation tmp calc /= 60 const
execute if score tmp calc matches ..19 run scoreboard players add tmp calc 1

scoreboard players operation tmp calc *= 20 const
scoreboard players operation tmp calc *= 60 const
scoreboard players operation rejoin_threshold sgn1.settings = tmp calc
scoreboard players set @s menu -2000