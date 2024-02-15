
execute unless score @s sgn1.game = game_counter sgn1.game run function short_game_name_1:save_system/no_longer_in_game

execute if score @s sgn1.game = game_counter sgn1.game if score state sgn1.game matches 1 run function short_game_name_1:in_game/join_handler/rejoined
execute if score @s sgn1.game = game_counter sgn1.game if score state sgn1.game matches 0 run function short_game_name_1:in_lobby/join_handler/rejoined

