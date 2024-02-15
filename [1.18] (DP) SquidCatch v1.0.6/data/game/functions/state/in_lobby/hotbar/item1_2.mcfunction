tag @s remove ready

team join nr_red @s[team=r_red]
team join nr_green @s[team=r_green]
team join nr_blue @s[team=r_blue]
team join nr_yellow @s[team=r_yellow]
team join nr_dark_red @s[team=r_dark_red]
team join nr_dark_green @s[team=r_dark_green]
team join nr_dark_blue @s[team=r_dark_blue]
team join nr_gold @s[team=r_gold]

execute if score teams settings matches 0 run team join lobby @s
playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1000 2

scoreboard players reset @s bool
clear @s #core:all_items{clear:1b,hotbar:1b}

function game:state/in_lobby/hotbar/items