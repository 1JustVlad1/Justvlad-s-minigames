team join lobby @s
playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1000 2
tag @s remove sgn1.ready


scoreboard players reset @s bool
function short_game_name_1:is_in_correct_dimension/in_lobby/items