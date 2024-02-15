function core:player_profile/find_by_id


loot replace block 999999 100 999999 container.0 loot core:player_head
execute if score profile_found bool matches 1 run data modify storage core:profiles storage[0].name set from block 999999 100 999999 Items[0].tag.SkullOwner.Name

