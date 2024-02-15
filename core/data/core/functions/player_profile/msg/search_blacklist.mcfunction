execute store result score blocked_id tmp run data get storage core:profiles tmp.messages.blacklist[0].playerId
execute store result score blacklisted bool if score @s id = blocked_id tmp

data remove storage core:profiles tmp.messages.blacklist[0].playerId

execute unless score @s id = blocked_id tmp run function core:player_profile/msg/search_blocked_player