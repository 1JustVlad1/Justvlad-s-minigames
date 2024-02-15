data modify storage core:profiles tmp set value {}
data modify storage core:profiles tmp set from storage core:profiles search[0]

execute store result score friend_id tmp run data get storage core:profiles tmp.playerId
data remove storage core:profiles search[0]


# execute if score friend_id tmp = msg @s run #say friend found


execute store success score friend_found bool if score friend_id tmp = @s id
execute unless score friend_id tmp = @s id if data storage core:profiles search[] run function core:player_profile/search/by_friend
