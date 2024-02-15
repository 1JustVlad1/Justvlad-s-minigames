team join sgn1.nr_green @s[tag=!sgn1.ready]
team join sgn1.r_green @s[tag=sgn1.ready]
playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1000 2
execute if score teams_mode sgn1.settings matches 3 run tag @s add blocked_all

scoreboard players reset @s bool
function short_game_name_1:is_in_correct_dimension/in_lobby/items