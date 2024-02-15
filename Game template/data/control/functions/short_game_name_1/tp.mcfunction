execute if score state sgn1.game matches 0 at @e[tag=lobby,tag=short_game_name_1,tag=spawn,limit=1] run tp @s ~ ~ ~
execute unless entity @e[tag=short_game_name_1,tag=game,tag=spawn] if score state sgn1.game matches 1 at @e[tag=lobby,tag=short_game_name_1,tag=spawn,limit=1] run tp @s ~ ~ ~

execute if score state sgn1.game matches 1 at @e[tag=game,tag=short_game_name_1,tag=spawn,limit=1] rotated as @s run tp @s[team=!lobby] ~ ~ ~
execute if score state sgn1.game matches 1 at @e[tag=game,tag=short_game_name_1,tag=spawn,limit=1] rotated as @s run tp @s[team=lobby] ~ ~10 ~

execute unless entity @e[tag=short_game_name_1,tag=lobby,tag=spawn] run function errors:short_game_name_1/003/lobby_spawn_not_found
execute unless entity @e[tag=short_game_name_1,tag=game,tag=spawn] run function errors:short_game_name_1/003/game_spawn_not_found
