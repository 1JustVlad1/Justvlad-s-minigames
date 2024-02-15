tellraw @s [{"text":" ","color":"gray"},{"text":"[x] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -1"}},{"nbt":"game_titles[0]","storage":"core:storage","color":"gold"},{"text":" [✎]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Настройки"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -2000"}},{"text":" ","color":"gold"},{"text":"[❤]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Игроки"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -2400"}}]

#состояние
tellraw @s [{"text":" ","color":"gray"},{"text":"Спавн: ","color":"gray"},{"text":"[Лобби]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Спавн, на котором появляются все игроки пока игра не активна"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -2201"}},{"text":" ","color":"gray"},{"text":"[Общий]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Спавн, на котором появляются все игроки во время игры"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -2202"}}]
tellraw @s [{"text":" ","color":"gray"},{"text":"Команды: ","color":"gray"}]
tellraw @s [{"text":"  "},{"text":"[Красные]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Спавн, на котором появляются игроки красной команды во время игры"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -2203"}}]


# execute if score state sgn1.game matches 1 run tellraw @s [{"text":" ","color":"gray"},{"text":" [⏹]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в процессе. Нажмите, чтобы остановить."}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -2002"}}]
# execute if score state sgn1.game matches 0 run tellraw @s [{"text":" ","color":"gray"},{"text":"[▶]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в ожидании игроков. Нажмите, чтобы начать."}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -2001"}}]

# ✔❌