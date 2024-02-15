scoreboard players set state sgn1.game 1
execute as @a if predicate short_game_name_1:game_1_check store result score @s sgn1.game run scoreboard players add game_counter sgn1.game 1 

gamemode spectator @a[tag=!sgn1.ready,predicate=short_game_name_1:game_1_check]
gamemode adventure @a[tag=sgn1.ready,predicate=short_game_name_1:game_1_check]
team join lobby @a[tag=!sgn1.ready,predicate=short_game_name_1:game_1_check]

clear @s

execute as @a if predicate short_game_name_1:game_1_check run function control:short_game_name_1/tp

