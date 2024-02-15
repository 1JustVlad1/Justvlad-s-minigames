scoreboard players operation id_search tmp = @s id

function core:player_profile/find_by_id

tellraw @s {"nbt":"tmp","storage":"core:profiles"}
