tag @s add ready

team join r_red @s[team=nr_red]
team join r_green @s[team=nr_green]
team join r_blue @s[team=nr_blue]
team join r_yellow @s[team=nr_yellow]
team join r_dark_red @s[team=nr_dark_red]
team join r_dark_green @s[team=nr_dark_green]
team join r_dark_blue @s[team=nr_dark_blue]
team join r_gold @s[team=nr_gold]

execute if score teams settings matches 0 run team join blue @s
playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1000 2

scoreboard players reset @s bool
clear @s #core:all_items{clear:1b,hotbar:1b}

function game:state/in_lobby/hotbar/items