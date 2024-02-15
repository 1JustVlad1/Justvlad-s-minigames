# scoreboard players operation id_search tmp = @s id
function core:player_profile/find_by_id


data modify storage core:profiles search set value []
data modify storage core:profiles search set from storage core:profiles tmp.friends

function core:player_profile/search/by_friend


data modify storage core:profiles search set value []

