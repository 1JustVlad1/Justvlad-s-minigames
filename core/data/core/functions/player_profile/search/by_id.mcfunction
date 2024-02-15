data modify storage core:profiles tmp set value {}
data modify storage core:profiles tmp set from storage core:profiles search[0]

execute store result score id tmp run data get storage core:profiles tmp.playerId
data remove storage core:profiles search[0]
data remove storage core:profiles storage[0]


execute unless score id tmp = id_search tmp run data modify storage core:profiles storage append from storage core:profiles tmp 


execute store success score profile_found bool if score id tmp = id_search tmp
execute if score id tmp = id_search tmp run data modify storage core:profiles storage prepend from storage core:profiles tmp
execute unless score id tmp = id_search tmp if data storage core:profiles search[] run function core:player_profile/search/by_id
