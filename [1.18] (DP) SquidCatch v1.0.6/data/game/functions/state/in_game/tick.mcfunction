execute store result score squids tmp if entity @e[tag=squid,tag=punish]
execute if score squids tmp <= maxSquids settings run function game:state/in_game/spawn_squids
execute store result score squids tmp if entity @e[tag=squid,tag=reward]
execute if score squids tmp < maxGlowSquids settings run function game:state/in_game/spawn_glow_squids

execute if score teams settings matches 0 run function game:state/in_game/ffa_top_bossbar
execute if score teams settings matches 1.. run function game:state/in_game/team_top_bossbar
execute if score teams settings matches 1.. run function game:state/in_game/sidebar

tag @e[tag=guarded] remove guarded
execute as @e[tag=squid,tag=guards] at @s run function game:state/in_game/guards
