function core:player_profile/find_by_id


execute if score profile_found bool matches 1 store result storage core:profiles storage[0].money long 1 run scoreboard players get @s money