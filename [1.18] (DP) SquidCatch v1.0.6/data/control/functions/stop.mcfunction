execute as @a unless score @s playerKills matches 1.. run scoreboard players set @s playerKills 0

clear @a

title @a title [{"selector":"@s"},{"text":" Победитель!","color":"green"}]

scoreboard players reset * tmp
scoreboard players reset * score
scoreboard players set state game 0
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1000 1

execute as @a run function control:tp
execute as @a run function control:spawnpoint

kill @e[tag=squid]

gamerule fallDamage false
bossbar set game:timer visible false
bossbar set game:top visible false

effect clear @a

tag @a[team=!lobby] add ready
tag @a[team=!lobby] add tmp
execute as @a run function game:state/in_lobby/items
team empty lobby
team empty red
team join r_red @a[team=,tag=tmp]
team empty green
team join r_green @a[team=,tag=tmp]
team empty blue
execute if score teams settings matches 0 run team join blue @a[team=,tag=tmp]
team join r_blue @a[team=,tag=tmp]
team empty yellow
team join r_yellow @a[team=,tag=tmp]
team empty dark_red
team join r_dark_red @a[team=,tag=tmp]
team empty dark_green
team join r_dark_green @a[team=,tag=tmp]
team empty dark_blue
team join r_dark_blue @a[team=,tag=tmp]
team empty gold
team join r_gold @a[team=,tag=tmp]
tag @a remove tmp


