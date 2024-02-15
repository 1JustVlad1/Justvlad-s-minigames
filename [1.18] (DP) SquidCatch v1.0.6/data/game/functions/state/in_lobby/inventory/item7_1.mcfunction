team join nr_dark_blue @s[tag=!ready]
team join r_dark_blue @s[tag=ready]
playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1000 2

scoreboard players reset @s bool
function game:state/in_lobby/items