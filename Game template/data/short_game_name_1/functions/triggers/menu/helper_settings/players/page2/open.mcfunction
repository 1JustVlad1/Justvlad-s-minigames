

tellraw @s [{"text":" ","color":"gray"},{"text":"[x] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -1"}},{"nbt":"game_titles[0]","storage":"core:storage","color":"gold"},{"text":" [✎]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Настройки"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -2000"}},{"text":" ","color":"gold"},{"text":"[⛏]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Инструменты"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -2200"}}]

tellraw @s [{"text":"  "},{"text":"Все","color":"gray","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -2400"}},{"text":"   "},{"text":"На режиме","color":"gray","underlined":true}]

tellraw @s {"text":"                                               ","strikethrough":true,"color":"dark_gray","italic":true}
