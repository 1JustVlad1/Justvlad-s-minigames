function control:spawnpoint
function control:tp

execute if score state game matches 0 run function game:state/in_lobby/joined
execute if score state game matches 1 run function game:state/in_game/joined

execute unless score @s gameId = id game run team leave @s
scoreboard players operation @s gameId = id game

title @s times 0 60 40
title @s title {"text":""}
title @s subtitle [{"text":"Добро пожаловать ","color":"gold"},{"selector":"@s","color":"yellow"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1000 1 0