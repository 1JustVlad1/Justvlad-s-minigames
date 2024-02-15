execute if score rejoin_threshold sgn1.settings matches 1.. if entity @s[team=!lobby] run function short_game_name_1:join_handler/start_rejoin_timer
execute if score rejoin_threshold sgn1.settings matches 0 run team leave @s


