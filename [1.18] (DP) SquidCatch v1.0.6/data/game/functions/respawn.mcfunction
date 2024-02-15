scoreboard players set @s tmp 3

execute if score state game matches 0 run function game:state/in_lobby/respawn
execute if score state game matches 1 run function game:state/in_game/respawn