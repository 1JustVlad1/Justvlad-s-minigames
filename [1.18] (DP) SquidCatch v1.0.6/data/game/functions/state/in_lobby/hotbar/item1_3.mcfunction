tellraw @s [{"text":"[","color":"gray"},{"text":"Игра","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Сначала присоединитесь к команде!","color":"red"}]
playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1000 0

tag @s remove ready

scoreboard players reset @s bool
clear @s #core:all_items{clear:1b,hotbar:1b}

function game:state/in_lobby/hotbar/items