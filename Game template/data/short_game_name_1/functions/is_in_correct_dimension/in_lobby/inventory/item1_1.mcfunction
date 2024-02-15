team join sgn1.nr_red @s[tag=!sgn1.ready]
team join sgn1.r_red @s[tag=sgn1.ready]
playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1000 2

scoreboard players reset @s bool
function short_game_name_1:is_in_correct_dimension/in_lobby/items