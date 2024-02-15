scoreboard players set state sgn1.game 0
scoreboard players reset * tmp

effect clear @a[predicate=short_game_name_1:game_1_check]

tag @a[team=!lobby] add sgn1.ready
tag @a[team=!lobby] add tmp
execute as @a if dimension map:short_game_name_1 run function short_game_name_1:is_in_correct_dimension/in_lobby/items
team empty lobby
team empty sgn1.red
team join sgn1.r_red @a[team=,tag=tmp]
team empty sgn1.green
team join sgn1.r_green @a[team=,tag=tmp]
team empty sgn1.blue
execute if score teams settings matches 0 run team join blue @a[team=,tag=tmp]
team join sgn1.r_blue @a[team=,tag=tmp]
team empty sgn1.yellow
team join sgn1.r_yellow @a[team=,tag=tmp]
team empty sgn1.dark_red
team join sgn1.r_dark_red @a[team=,tag=tmp]
team empty sgn1.dark_green
team join sgn1.r_dark_green @a[team=,tag=tmp]
team empty sgn1.dark_blue
team join sgn1.r_dark_blue @a[team=,tag=tmp]
team empty sgn1.gold
team join sgn1.r_gold @a[team=,tag=tmp]
tag @a remove tmp


execute as @a if dimension map:short_game_name_1 run function control:short_game_name_1/tp

