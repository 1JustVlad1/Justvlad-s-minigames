execute as @e[tag=spawn,sort=random,limit=1] positioned as @s if score @s map = map settings run summon glow_squid ~ ~ ~ {Glowing:1b,Silent:1b,Invulnerable:0b,Teacore:"nocol",PersistenceRequired:1b,ActiveEffects:[{Id:6b,Amplifier:120b,Duration:9999999,ShowParticles:0b}],Tags:["squid","reward","tmp"]}
execute store result score squids tmp if entity @e[tag=squid,tag=reward]
execute store result score @e[tag=tmp] id run scoreboard players add squid_id id 1
tag @e remove tmp
execute if score squids tmp < maxGlowSquids settings run function game:state/in_game/spawn_glow_squids
