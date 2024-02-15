tellraw @s [{"text":"[","color":"gray"},{"text":"Игра","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Команда заполнена!","color":"red"}]
playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1000 0

scoreboard players reset @s bool
function game:state/in_lobby/items