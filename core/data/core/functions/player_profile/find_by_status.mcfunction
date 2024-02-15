
data modify storage core:profiles search set value []
data modify storage core:profiles search set from storage core:profiles storage
data modify storage core:profiles search_tmp set value []


execute if score status tmp matches 0 run function core:player_profile/search/by_status/player
execute if score status tmp matches 1 run function core:player_profile/search/by_status/event_helper

