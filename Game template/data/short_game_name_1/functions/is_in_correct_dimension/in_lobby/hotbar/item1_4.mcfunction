tellraw @s [{"text":"[","color":"gray"},{"nbt":"game_titles[0]","storage":"core:storage","color":"gold"},{"text":"] ","color":"gray"},{"text":"Оператор запретил выбирать готовность!","color":"red"}]
playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1000 0

# execute if score ready_mode sgn1.settings matches 3 run function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/item1_1
# execute if score ready_mode sgn1.settings matches 4 run function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/item1_2


scoreboard players reset @s bool
clear @s #core:all_items{clear:1b,hotbar:1b}

function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/items