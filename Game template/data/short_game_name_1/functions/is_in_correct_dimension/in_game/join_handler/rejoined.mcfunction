

execute store result score current gametime run time query gametime
execute store result score calc gametime run scoreboard players operation current gametime -= @s[team=!lobby] sgn1.gametime



execute if entity @s[team=lobby] if score rejoin_threshold sgn1.settings matches 1.. run function short_game_name_1:join_handler/joined
execute if score rejoin_threshold sgn1.settings matches ..0 run function short_game_name_1:join_handler/joined
execute unless entity @s[team=lobby] if score calc gametime matches 1200.. if score rejoin_threshold sgn1.settings matches 1.. run function short_game_name_1:join_handler/start_rejoin_timer

execute if score calc gametime matches 1200.. if score rejoin_threshold sgn1.settings matches 1.. run function lobby:is_in_correct_dimension/join_handler/join
