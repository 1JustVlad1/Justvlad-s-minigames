execute if score state sgn1.game matches 1 if entity @s[gamemode=!spectator] if score rejoin_threshold sgn1.settings matches 1.. unless score @s rejoin_timer matches 1.. if predicate short_game_name_1:game_1_check run function short_game_name_1:join_handler/start_rejoin_timer
execute if score state sgn2.game matches 1 if entity @s[gamemode=!spectator] if score rejoin_threshold sgn2.settings matches 1.. unless score @s rejoin_timer matches 1.. if predicate short_game_name_2:game_2_check run function short_game_name_2:join_handler/start_rejoin_timer
execute if score state sgn3.game matches 1 if entity @s[gamemode=!spectator] if score rejoin_threshold sgn3.settings matches 1.. unless score @s rejoin_timer matches 1.. if predicate short_game_name_3:game_3_check run function short_game_name_3:join_handler/start_rejoin_timer
execute if score state sgn4.game matches 1 if entity @s[gamemode=!spectator] if score rejoin_threshold sgn4.settings matches 1.. unless score @s rejoin_timer matches 1.. if predicate short_game_name_4:game_4_check run function short_game_name_4:join_handler/start_rejoin_timer
execute if score state sgn5.game matches 1 if entity @s[gamemode=!spectator] if score rejoin_threshold sgn5.settings matches 1.. unless score @s rejoin_timer matches 1.. if predicate short_game_name_5:game_5_check run function short_game_name_5:join_handler/start_rejoin_timer
execute if score state sgn6.game matches 1 if entity @s[gamemode=!spectator] if score rejoin_threshold sgn6.settings matches 1.. unless score @s rejoin_timer matches 1.. if predicate short_game_name_6:game_6_check run function short_game_name_6:join_handler/start_rejoin_timer
execute if score state sgn7.game matches 1 if entity @s[gamemode=!spectator] if score rejoin_threshold sgn7.settings matches 1.. unless score @s rejoin_timer matches 1.. if predicate short_game_name_7:game_7_check run function short_game_name_7:join_handler/start_rejoin_timer
execute if score state sgn8.game matches 1 if entity @s[gamemode=!spectator] if score rejoin_threshold sgn8.settings matches 1.. unless score @s rejoin_timer matches 1.. if predicate short_game_name_8:game_8_check run function short_game_name_8:join_handler/start_rejoin_timer
execute if score state sgn9.game matches 1 if entity @s[gamemode=!spectator] if score rejoin_threshold sgn9.settings matches 1.. unless score @s rejoin_timer matches 1.. if predicate short_game_name_9:game_9_check run function short_game_name_9:join_handler/start_rejoin_timer

execute unless score @s lobby matches 0 run function lobby:is_in_correct_dimension/join_handler/join
execute unless score @s sgn1 matches 0 run function short_game_name_1:is_in_correct_dimension/join_handler/join
execute unless score @s sgn2 matches 0 run function short_game_name_2:is_in_correct_dimension/join_handler/join
execute unless score @s sgn3 matches 0 run function short_game_name_3:is_in_correct_dimension/join_handler/join
execute unless score @s sgn4 matches 0 run function short_game_name_4:is_in_correct_dimension/join_handler/join
execute unless score @s sgn5 matches 0 run function short_game_name_5:is_in_correct_dimension/join_handler/join
execute unless score @s sgn6 matches 0 run function short_game_name_6:is_in_correct_dimension/join_handler/join
execute unless score @s sgn7 matches 0 run function short_game_name_7:is_in_correct_dimension/join_handler/join
execute unless score @s sgn8 matches 0 run function short_game_name_8:is_in_correct_dimension/join_handler/join
execute unless score @s sgn9 matches 0 run function short_game_name_9:is_in_correct_dimension/join_handler/join

