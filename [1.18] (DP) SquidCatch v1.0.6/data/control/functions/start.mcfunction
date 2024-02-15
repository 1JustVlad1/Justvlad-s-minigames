team join red @a[team=r_red]
team join green @a[team=r_green]
team join blue @a[team=r_blue]
team join yellow @a[team=r_yellow]
team join dark_red @a[team=r_dark_red]
team join dark_green @a[team=r_dark_green]
team join dark_blue @a[team=r_dark_blue]
team join gold @a[team=r_gold]


team empty r_red
team empty r_green
team empty r_blue
team empty r_yellow
team empty r_dark_red
team empty r_dark_green
team empty r_dark_blue
team empty r_gold

team empty nr_red
team empty nr_green
team empty nr_blue
team empty nr_yellow
team empty nr_dark_red
team empty nr_dark_green
team empty nr_dark_blue
team empty nr_gold


clear @a
xp set @a 0 levels
xp set @a 0 points
scoreboard players set state game 1

scoreboard players reset * playerKills
scoreboard players reset * tmp
scoreboard players reset * score
scoreboard players reset * squid_id
scoreboard players reset * display
scoreboard players operation t game = t settings

execute as @a run function control:tp
execute as @a run function control:spawnpoint

gamemode spectator @a[tag=!ready]
gamemode adventure @a[tag=ready]
team join lobby @a[tag=!ready]

bossbar set game:timer visible true
bossbar set game:top visible true

gamerule fallDamage true
scoreboard players add id game 1
scoreboard players operation @a gameId = id game 

execute as @a run function control:give_boots

tag @e remove ready
tag @e remove blocked_all
tag @e remove blocked_join
tag @e remove blocked_leave


effect give @a instant_health 5 0 true