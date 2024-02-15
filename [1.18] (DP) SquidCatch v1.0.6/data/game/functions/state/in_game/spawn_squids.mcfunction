execute as @e[tag=spawn,sort=random,limit=1] positioned as @s if score @s map = map settings run summon squid ~ ~ ~ {Silent:1b,Invulnerable:0b,Teacore:"nocol",PersistenceRequired:1b,Tags:["squid","punish"]}
execute store result score squids tmp if entity @e[tag=squid,tag=punish]
scoreboard players remove squids tmp 1

execute if score squids tmp < maxSquids settings run function game:state/in_game/spawn_squids