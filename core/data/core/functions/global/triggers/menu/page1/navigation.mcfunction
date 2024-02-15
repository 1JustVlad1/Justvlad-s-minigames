tellraw @s [{"text":" ","color":"gray"},{"text":"[x]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set 2"}},{"text":" Навигация","color":"gray"}]

tellraw @s[tag=event_helper] [{"text":" ","color":"gray"},{"text":"[Быстрое тп в комнату]","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger helper_room"}}]

tellraw @s [{"text":" ","color":"gray"},{"text":"[Переподключиться]","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger rejoin"}}]

execute store result score players tmp as @a if predicate lobby:lobby_check
tellraw @s [{"text":" - ","color":"gray"},{"text":"Лобби","color":"gold"},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger lobby"}}]

execute store result score players tmp as @a if predicate short_game_name_1:game_1_check
execute if score state sgn1.game matches 0 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[0]","storage":"core:storage","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Ожидание игроков..."}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn1"}}]
execute if score state sgn1.game matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[0]","storage":"core:storage","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в процессе"}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn1"}}]

execute store result score players tmp as @a if predicate short_game_name_2:game_2_check

execute if score state sgn2.game matches 0 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[1]","storage":"core:storage","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Ожидание игроков..."}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn2"}}]
execute if score state sgn2.game matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[1]","storage":"core:storage","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в процессе"}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn2"}}]

execute store result score players tmp as @a if predicate short_game_name_3:game_3_check

execute if score state sgn3.game matches 0 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[2]","storage":"core:storage","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Ожидание игроков..."}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn2"}}]
execute if score state sgn3.game matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[2]","storage":"core:storage","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в процессе"}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn2"}}]

execute store result score players tmp as @a if predicate short_game_name_4:game_4_check

execute if score state sgn4.game matches 0 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[3]","storage":"core:storage","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Ожидание игроков..."}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn2"}}]
execute if score state sgn4.game matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[3]","storage":"core:storage","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в процессе"}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn2"}}]

execute store result score players tmp as @a if predicate short_game_name_5:game_5_check

execute if score state sgn5.game matches 0 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[4]","storage":"core:storage","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Ожидание игроков..."}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn2"}}]
execute if score state sgn5.game matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[4]","storage":"core:storage","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в процессе"}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn2"}}]

execute store result score players tmp as @a if predicate short_game_name_6:game_6_check

execute if score state sgn6.game matches 0 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[5]","storage":"core:storage","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Ожидание игроков..."}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn2"}}]
execute if score state sgn6.game matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[5]","storage":"core:storage","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в процессе"}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn2"}}]

execute store result score players tmp as @a if predicate short_game_name_7:game_7_check

execute if score state sgn7.game matches 0 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[6]","storage":"core:storage","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Ожидание игроков..."}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn2"}}]
execute if score state sgn7.game matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[6]","storage":"core:storage","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в процессе"}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn2"}}]

execute store result score players tmp as @a if predicate short_game_name_8:game_8_check

execute if score state sgn8.game matches 0 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[7]","storage":"core:storage","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Ожидание игроков..."}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn2"}}]
execute if score state sgn8.game matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[7]","storage":"core:storage","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в процессе"}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn2"}}]

execute store result score players tmp as @a if predicate short_game_name_9:game_9_check

execute if score state sgn9.game matches 0 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[8]","storage":"core:storage","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Ожидание игроков..."}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn2"}}]
execute if score state sgn9.game matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[8]","storage":"core:storage","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в процессе"}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn2"}}]

