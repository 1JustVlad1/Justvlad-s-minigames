function core:player_profile/find_by_id


execute if score profile_found bool matches 1 store result storage core:profiles storage[0].notifications.bug_reports long 1 run scoreboard players get bug_reports tmp
execute if score profile_found bool matches 1 store result storage core:profiles storage[0].notifications.all long 1 run scoreboard players get all_notifications tmp
execute if score profile_found bool matches 1 store result storage core:profiles storage[0].notifications.messages long 1 run scoreboard players get msg tmp

