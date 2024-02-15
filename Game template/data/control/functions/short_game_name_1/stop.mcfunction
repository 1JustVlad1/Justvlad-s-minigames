scoreboard players set state sgn1.game 0

team empty sgn1.participant
team join sgn1.participant dummy

execute as @a if predicate short_game_name_1:game_1_check run function control:short_game_name_1/tp

