tellraw @s [{"text":"[","color":"gray"},{"nbt":"game_titles[0]","storage":"core:storage","color":"gold"},{"text":"] ","color":"gray"},{"text":"Команда заполнена!","color":"red"}]
playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1000 0

scoreboard players reset @s bool
function short_game_name_1:is_in_correct_dimension/in_lobby/items