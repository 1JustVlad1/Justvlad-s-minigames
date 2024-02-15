scoreboard players set state sgn1.game 1
execute as @a if predicate short_game_name_1:game_1_check store result score @s sgn1.game run scoreboard players add game_counter sgn1.game 1 

team join sgn1.participant @a[predicate=short_game_name_1:game_1_check]

execute as @a if predicate short_game_name_1:game_1_check run function control:short_game_name_1/tp

