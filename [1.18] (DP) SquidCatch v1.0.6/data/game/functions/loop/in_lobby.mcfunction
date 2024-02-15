effect give @a[gamemode=!creative] minecraft:weakness 2 255 true


function game:state/in_lobby/max_players
execute as @a[gamemode=!creative] at @s run function game:state/in_lobby/hotbar
execute as @a[gamemode=!creative] at @s run function game:state/in_lobby/inventory
scoreboard players operation teams tmp = teams settings