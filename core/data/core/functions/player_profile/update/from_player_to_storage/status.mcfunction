function core:player_profile/find_by_id

execute if score profile_found bool matches 1 if entity @s[tag=player] run data modify storage core:profiles storage[0].status set value "player"

execute if score profile_found bool matches 1 if entity @s[tag=event_helper] run data modify storage core:profiles storage[0].status set value "event_helper"
execute if score profile_found bool matches 1 if entity @s[tag=creator] run data modify storage core:profiles storage[0].status set value "creator"
execute if score profile_found bool matches 1 if entity @s[tag=builder] run data modify storage core:profiles storage[0].status set value "builder"

