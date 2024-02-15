function core:player_profile/find_by_id


execute if score profile_found bool matches 1 if data storage core:profiles tmp{status:'event_helper'} run tag @s add event_helper
execute if score profile_found bool matches 1 if data storage core:profiles tmp{status:'builder'} run tag @s add builder
execute if score profile_found bool matches 1 if data storage core:profiles tmp{status:'creator'} run tag @s add creator
