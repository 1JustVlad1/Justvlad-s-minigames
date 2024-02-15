
data modify storage core:profiles search set value []
data modify storage core:profiles search set from storage core:profiles storage

function core:player_profile/search/by_id

execute unless score id tmp = id_search tmp run function errors:core/003/player_profile/profile_not_found

data modify storage core:profiles search set value []
