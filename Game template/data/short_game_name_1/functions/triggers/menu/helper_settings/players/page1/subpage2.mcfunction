tellraw @s [{"text":" ","color":"gray"},{"text":"[x] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -1"}},{"nbt":"game_titles[0]","storage":"core:storage","color":"gold"},{"text":" [✎]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Настройки"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -2000"}},{"text":" ","color":"gold"},{"text":"[⛏]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Инструменты"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -2200"}}]

tellraw @s [{"text":"  "},{"text":"Все","color":"gray","underlined":true},{"text":"   "},{"text":"На режиме","color":"gray","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -2600"}}]

tellraw @s {"text":"                                               ","strikethrough":true,"color":"dark_gray","italic":true}

function short_game_name_1:triggers/menu/helper_settings/players/page1/update_table


execute if entity @a[scores={tmp_id=10}] run tellraw @s [{"text":"  "},{"nbt":"tmp_table[9].name","storage":"core:storage","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Онлайн"}]}},{"text":" Измерение: ","color":"gray"},{"nbt":"tmp_table[9].cur_dim","storage":"core:storage","color":"gold"},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -2601"}}]

execute unless entity @a[scores={tmp_id=10}] run tellraw @s [{"text":"  "},{"nbt":"tmp_table[9].name","storage":"core:storage","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Офлайн"}]}},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -2601"}}]
