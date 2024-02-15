tellraw @s [{"text":" ","color":"gray"},{"text":"[x] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -1"}},{"nbt":"game_titles[0]","storage":"core:storage","color":"gold"},{"text":" -> Игроки","color":"gold"},{"text":" [✎]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Настройки"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -2000"}},{"text":" ","color":"gold"},{"text":"[⛏]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Инструменты"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -2200"}}]

tellraw @s [{"text":"  "},{"text":"Все","color":"gray","underlined":true},{"text":"   "},{"text":"На режиме","color":"gray","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -2600"}},{"text":"                      ","color":"gold"},{"text":"[!]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Нажмите, чтобы обновить список"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -2400"}}]

tellraw @s {"text":"                                               ","strikethrough":true,"color":"dark_gray","italic":true}


execute if score @s menu matches -2400 run function short_game_name_1:triggers/menu/helper_settings/players/page1/open
execute if score @s menu matches -2411 run function short_game_name_1:triggers/menu/helper_settings/players/player_1/open