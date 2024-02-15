effect give @a[gamemode=!creative] minecraft:weakness 2 255 true

# execute if score ready_mode sgn1.settings matches 3 run clear @s gray_dye{clear:1b,hotbar:1b}
# execute if score ready_mode sgn1.settings matches 4 run clear @s gray_dye{clear:1b,hotbar:1b}

# execute if score ready_mode sgn1.settings matches 0 run tag @s remove blocked_leave
# execute if score ready_mode sgn1.settings matches 0 run tag @s remove blocked_join
# execute if score ready_mode sgn1.settings matches 0 run tag @s remove blocked_all
# execute unless score ready_mode sgn1.settings matches 1..4 run tag @s remove blocked_all

function short_game_name_1:is_in_correct_dimension/in_lobby/max_players
function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar
function short_game_name_1:is_in_correct_dimension/in_lobby/inventory
scoreboard players operation teams tmp = teams sgn1.settings