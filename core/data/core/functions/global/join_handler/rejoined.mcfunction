execute if predicate lobby:lobby_check run function lobby:join_handler/rejoined
execute if predicate short_game_name_1:game_1_check run function short_game_name_1:join_handler/rejoined
execute if predicate short_game_name_2:game_2_check run function short_game_name_2:join_handler/rejoined
execute if predicate short_game_name_3:game_3_check run function short_game_name_3:join_handler/rejoined
execute if predicate short_game_name_4:game_4_check run function short_game_name_4:join_handler/rejoined
execute if predicate short_game_name_5:game_5_check run function short_game_name_5:join_handler/rejoined
execute if predicate short_game_name_6:game_6_check run function short_game_name_6:join_handler/rejoined
execute if predicate short_game_name_7:game_7_check run function short_game_name_7:join_handler/rejoined
execute if predicate short_game_name_8:game_8_check run function short_game_name_8:join_handler/rejoined
execute if predicate short_game_name_9:game_9_check run function short_game_name_9:join_handler/rejoined

function core:player_profile/leveling_system/xp_offline_bonus

function core:event_helper/bug_reports/check_timer
function core:player_profile/update/from_storage_to_player
function core:global/triggers/disable
function core:global/triggers/enable

scoreboard players reset @s rejoined