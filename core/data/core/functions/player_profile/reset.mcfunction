scoreboard players operation id_search tmp = @s id

function core:player_profile/find_by_id


execute if score profile_found bool matches 1 run data modify storage core:profiles storage[0] merge value {name:"",playerId:0L,level:1L,xp:0L,money:0L,status:"",notifications:{all:0L,messages:0L,bug_reports:0L,friend_requests:0L},friends:[],friend_requests:{awaiting_approval:[],sent_out:[]},messages:{unread:[],all:[]},settings:{messages:0b}}



execute if score profile_found bool matches 1 run execute store result storage core:profiles storage[0].playerId int 1 run scoreboard players get @s id

function core:player_profile/update/from_player_to_storage

