scoreboard players operation id_search tmp = @s id

data modify storage core:profiles search set value []
data modify storage core:profiles search set from storage core:profiles storage

function core:player_profile/search/by_id

execute if score profile_found bool matches 1 run function errors:core/003/player_profile/found_same_profile
execute if score profile_found bool matches 1 run data remove storage core:profiles storage[0]
data modify storage core:profiles search set value []


data modify storage core:profiles tmp set value {name:"",creation_timestamp:0L,playerId:0L,level:1L,xp:0L,money:0L,status:"",notifications:{all:0L,messages:0L,bug_reports:0L,friend_requests:0L},friends:[],friend_requests:{awaiting_approval:[],sent_out:[]},messages:{blacklist:[],unread:[],all:[],sent_out:[]},settings:{messages:0b,friend_requests:0b}}


execute store result storage core:profiles tmp.playerId int 1 run scoreboard players get @s id
execute store result storage core:profiles tmp.creation_timestamp long 1 run time query gametime

data modify storage core:profiles storage prepend from storage core:profiles tmp


function core:player_profile/update/from_player_to_storage


data modify storage core:profiles tmp set value {}
scoreboard players reset * tmp
