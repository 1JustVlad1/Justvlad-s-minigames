execute if score state game matches 0 run function game:state/in_lobby/asp
execute if score state game matches 1 run function game:state/in_game/asp

execute if score @s tsd matches 1 unless score @s tmp matches 2.. run function game:respawn

scoreboard players remove @s[scores={tmp=1..}] tmp 1