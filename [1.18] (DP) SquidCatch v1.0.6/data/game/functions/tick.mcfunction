execute as @a at @s run function game:asp

execute if score state game matches 0 run function game:state/in_lobby/tick
execute if score state game matches 1 run function game:state/in_game/tick
