data modify storage core:profiles search_status set value {}
data modify storage core:profiles search_status set from storage core:profiles search[0]

data remove storage core:profiles search[0]


execute if data storage core:profiles search_status{status:'event_helper'} run data modify storage core:profiles search_tmp append from storage core:profiles search_status

execute if data storage core:profiles search[] run function core:player_profile/search/by_status/event_helper
