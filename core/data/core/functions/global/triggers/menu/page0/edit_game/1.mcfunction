tellraw @s [{"text":" ","color":"gray"},{"text":"[x] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -1"}},{"nbt":"game_titles[0]","storage":"core:storage","color":"gold"}]


execute if score active sgn1.settings matches 0 run tellraw @s [{"text":" ","color":"gray"},{"text":"Состояние: ","color":"gray"},{"text":"[Закрыто]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Нажать"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10003"}}]
execute if score active sgn1.settings matches 1 run tellraw @s [{"text":" ","color":"gray"},{"text":"Состояние: ","color":"gray"},{"text":"[Открыто]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Нажать"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10004"}}]

tellraw @s [{"text":" ","color":"gray"},{"text":"[Старт]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Нажать"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10001"}},{"text":" [Стоп]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Нажать"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10002"}}]
