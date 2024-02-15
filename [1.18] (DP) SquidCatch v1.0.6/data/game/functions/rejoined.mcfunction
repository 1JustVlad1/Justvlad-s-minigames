function control:spawnpoint
function control:tp

execute if score state game matches 0 run function game:state/in_lobby/rejoined
execute if score state game matches 1 run function game:state/in_game/rejoined

execute unless score @s gameId = id game run team leave @s
scoreboard players operation @s gameId = id game

