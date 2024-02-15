

execute unless score @s lobby matches 0 run function core:global/join_handler/join
execute unless score @s sgn1 matches 0 run function core:global/join_handler/join
execute unless score @s sgn2 matches 0 run function core:global/join_handler/join
execute unless score @s sgn3 matches 0 run function core:global/join_handler/join
execute unless score @s sgn4 matches 0 run function core:global/join_handler/join
execute unless score @s sgn5 matches 0 run function core:global/join_handler/join
execute unless score @s sgn6 matches 0 run function core:global/join_handler/join
execute unless score @s sgn7 matches 0 run function core:global/join_handler/join
execute unless score @s sgn8 matches 0 run function core:global/join_handler/join
execute unless score @s sgn9 matches 0 run function core:global/join_handler/join

execute unless score @s rejoin_timer matches 1.. if score @s prev_game matches 1 run function short_game_name_1:save_system/save_player_vars
execute unless score @s rejoin_timer matches 1.. if score @s prev_game matches 2 run function short_game_name_2:save_system/save_player_vars
execute unless score @s rejoin_timer matches 1.. if score @s prev_game matches 3 run function short_game_name_3:save_system/save_player_vars
execute unless score @s rejoin_timer matches 1.. if score @s prev_game matches 4 run function short_game_name_4:save_system/save_player_vars
execute unless score @s rejoin_timer matches 1.. if score @s prev_game matches 5 run function short_game_name_5:save_system/save_player_vars
execute unless score @s rejoin_timer matches 1.. if score @s prev_game matches 6 run function short_game_name_6:save_system/save_player_vars
execute unless score @s rejoin_timer matches 1.. if score @s prev_game matches 7 run function short_game_name_7:save_system/save_player_vars
execute unless score @s rejoin_timer matches 1.. if score @s prev_game matches 8 run function short_game_name_8:save_system/save_player_vars
execute unless score @s rejoin_timer matches 1.. if score @s prev_game matches 9 run function short_game_name_9:save_system/save_player_vars
