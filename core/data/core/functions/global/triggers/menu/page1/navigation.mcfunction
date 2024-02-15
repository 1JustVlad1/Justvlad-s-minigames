tellraw @s [{"text":" ","color":"gray"},{"text":"[x]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set 1"}},{"text":" [Навигация]","color":"gray"}]

tellraw @s [{"text":" ","color":"gray"},{"text":"[Переподключиться]","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger rejoin"}}]

execute store result score players tmp as @a if predicate lobby:lobby_check
tellraw @s [{"text":" - ","color":"gray"},{"text":"Лобби","color":"gold"},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger lobby"}}]

execute store result score players tmp as @a if predicate short_game_name_1:game_1_check
execute if score state sgn1.game matches 0 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[0]","storage":"core:storage","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Ожидание игроков..."}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn1"}}]
execute if score state sgn1.game matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[0]","storage":"core:storage","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в процессе"}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn1"}}]

execute store result score players tmp as @a if predicate short_game_name_2:game_2_check

execute if score state sgn2.game matches 0 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[1]","storage":"core:storage","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Ожидание игроков..."}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn2"}}]
execute if score state sgn2.game matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"nbt":"game_titles[1]","storage":"core:storage","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в процессе"}]}},{"text":" Игроки: ","color":"gray"},{"score":{"objective":"tmp","name":"players"}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger sgn2"}}]
