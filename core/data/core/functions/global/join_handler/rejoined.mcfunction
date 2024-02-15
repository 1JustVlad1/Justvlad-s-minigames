execute if dimension map:lobby run function lobby:join_handler/rejoined
execute if dimension map:short_game_name_1 run function short_game_name_1:join_handler/rejoined
execute if dimension map:short_game_name_2 run function short_game_name_2:join_handler/rejoined
execute if dimension map:short_game_name_3 run function short_game_name_3:join_handler/rejoined
execute if dimension map:short_game_name_4 run function short_game_name_4:join_handler/rejoined
execute if dimension map:short_game_name_5 run function short_game_name_5:join_handler/rejoined
execute if dimension map:short_game_name_6 run function short_game_name_6:join_handler/rejoined
execute if dimension map:short_game_name_7 run function short_game_name_7:join_handler/rejoined
execute if dimension map:short_game_name_8 run function short_game_name_8:join_handler/rejoined
execute if dimension map:short_game_name_9 run function short_game_name_9:join_handler/rejoined

function core:player_profile/leveling_system/xp_offline_bonus

function core:event_helper/bug_reports/check_timer
function core:player_profile/update/from_storage_to_player
function core:global/triggers/disable
function core:global/triggers/enable

scoreboard players reset @s rejoined