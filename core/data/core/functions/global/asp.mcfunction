
execute unless score @s cur_dim = @s prev_dim run function core:global/join_handler/switched_to_dim

scoreboard players operation @s prev_dim = @s cur_dim

execute if dimension map:lobby run scoreboard players set @s cur_dim 0
execute if dimension map:short_game_name_1 run scoreboard players set @s cur_dim 1
execute if dimension map:short_game_name_2 run scoreboard players set @s cur_dim 2
execute if dimension map:short_game_name_3 run scoreboard players set @s cur_dim 3
execute if dimension map:short_game_name_4 run scoreboard players set @s cur_dim 4
execute if dimension map:short_game_name_5 run scoreboard players set @s cur_dim 5
execute if dimension map:short_game_name_6 run scoreboard players set @s cur_dim 6
execute if dimension map:short_game_name_7 run scoreboard players set @s cur_dim 7
execute if dimension map:short_game_name_8 run scoreboard players set @s cur_dim 8
execute if dimension map:short_game_name_9 run scoreboard players set @s cur_dim 9


execute if entity @s[tag=!player] run function core:global/join_handler/joined_for_the_first_time
execute if entity @s[team=] run function core:global/join_handler/no_team
execute if score @s rejoined matches 1.. run function core:global/join_handler/rejoined

execute if score @s tsd matches 0 unless score @s died matches 1.. run function core:global/death
execute if score @s tsd matches 1 run function core:global/respawn
execute if score @s died matches 1.. run scoreboard players remove @s died 1

execute if dimension map:lobby run function lobby:asp
execute if dimension map:short_game_name_1 run function short_game_name_1:asp
execute if dimension map:short_game_name_2 run function short_game_name_2:asp
execute if dimension map:short_game_name_3 run function short_game_name_3:asp
execute if dimension map:short_game_name_4 run function short_game_name_4:asp
execute if dimension map:short_game_name_5 run function short_game_name_5:asp
execute if dimension map:short_game_name_6 run function short_game_name_6:asp
execute if dimension map:short_game_name_7 run function short_game_name_7:asp
execute if dimension map:short_game_name_8 run function short_game_name_8:asp
execute if dimension map:short_game_name_9 run function short_game_name_9:asp

function core:global/triggers/asp
execute if score @s rejoin_timer matches 1.. run function core:global/actionbar/rejoin_timer
execute if entity @s[nbt={Inventory:[{id:"minecraft:written_book",Count:1b,tag:{bug_report:1b}}]}] run function core:event_helper/bug_reports/report_sent
execute if entity @s[nbt={Inventory:[{id:"minecraft:written_book",Count:1b,tag:{msg:1b}}]}] run function core:player_profile/msg/sent


scoreboard players remove @s[scores={rejoin_timer=1..}] rejoin_timer 1