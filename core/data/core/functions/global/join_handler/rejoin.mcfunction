execute if score @s prev_game matches 1 run function short_game_name_1:is_in_correct_dimension/join_handler/join
execute if score @s prev_game matches 2 run function short_game_name_2:is_in_correct_dimension/join_handler/join
execute if score @s prev_game matches 3 run function short_game_name_3:is_in_correct_dimension/join_handler/join
execute if score @s prev_game matches 4 run function short_game_name_4:is_in_correct_dimension/join_handler/join
execute if score @s prev_game matches 5 run function short_game_name_5:is_in_correct_dimension/join_handler/join
execute if score @s prev_game matches 6 run function short_game_name_6:is_in_correct_dimension/join_handler/join
execute if score @s prev_game matches 7 run function short_game_name_7:is_in_correct_dimension/join_handler/join
execute if score @s prev_game matches 8 run function short_game_name_8:is_in_correct_dimension/join_handler/join
execute if score @s prev_game matches 9 run function short_game_name_9:is_in_correct_dimension/join_handler/join
execute unless score @s sgn1.game = game_counter sgn1.game run function short_game_name_1:save_system/no_longer_in_game
execute unless score @s sgn2.game = game_counter sgn2.game run function short_game_name_2:save_system/no_longer_in_game
execute unless score @s sgn3.game = game_counter sgn3.game run function short_game_name_3:save_system/no_longer_in_game
execute unless score @s sgn4.game = game_counter sgn4.game run function short_game_name_4:save_system/no_longer_in_game
execute unless score @s sgn5.game = game_counter sgn5.game run function short_game_name_5:save_system/no_longer_in_game
execute unless score @s sgn6.game = game_counter sgn6.game run function short_game_name_6:save_system/no_longer_in_game
execute unless score @s sgn7.game = game_counter sgn7.game run function short_game_name_7:save_system/no_longer_in_game
execute unless score @s sgn8.game = game_counter sgn8.game run function short_game_name_8:save_system/no_longer_in_game
execute unless score @s sgn9.game = game_counter sgn9.game run function short_game_name_9:save_system/no_longer_in_game

execute if score state sgn1.game matches 0 run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"nbt":"game_titles[0]","storage":"core:storage","color":"gold"},{"text":"] ","color":"gray"},{"text":"Игра уже закончена!","color":"red"}]
execute if score state sgn2.game matches 0 run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"nbt":"game_titles[1]","storage":"core:storage","color":"gold"},{"text":"] ","color":"gray"},{"text":"Игра уже закончена!","color":"red"}]
execute if score state sgn3.game matches 0 run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"nbt":"game_titles[2]","storage":"core:storage","color":"gold"},{"text":"] ","color":"gray"},{"text":"Игра уже закончена!","color":"red"}]
execute if score state sgn4.game matches 0 run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"nbt":"game_titles[3]","storage":"core:storage","color":"gold"},{"text":"] ","color":"gray"},{"text":"Игра уже закончена!","color":"red"}]
execute if score state sgn5.game matches 0 run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"nbt":"game_titles[4]","storage":"core:storage","color":"gold"},{"text":"] ","color":"gray"},{"text":"Игра уже закончена!","color":"red"}]
execute if score state sgn6.game matches 0 run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"nbt":"game_titles[5]","storage":"core:storage","color":"gold"},{"text":"] ","color":"gray"},{"text":"Игра уже закончена!","color":"red"}]
execute if score state sgn7.game matches 0 run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"nbt":"game_titles[6]","storage":"core:storage","color":"gold"},{"text":"] ","color":"gray"},{"text":"Игра уже закончена!","color":"red"}]
execute if score state sgn8.game matches 0 run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"nbt":"game_titles[7]","storage":"core:storage","color":"gold"},{"text":"] ","color":"gray"},{"text":"Игра уже закончена!","color":"red"}]
execute if score state sgn9.game matches 0 run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"nbt":"game_titles[8]","storage":"core:storage","color":"gold"},{"text":"] ","color":"gray"},{"text":"Игра уже закончена!","color":"red"}]