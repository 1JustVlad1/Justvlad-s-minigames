tellraw @s [{"text":" ","color":"gray"},{"text":"[x] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -1"}},{"nbt":"game_titles[0]","storage":"core:storage","color":"gold"}]


execute if score active sgn1.settings matches 0 if score state sgn1.game matches 1 run tellraw @s [{"text":" ","color":"gray"},{"text":"Состояние: ","color":"gray"},{"text":"[❌]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Игра закрыта для игроков. Нажмите, чтобы поменять."}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10003"}},{"text":" ","color":"gray"},{"text":" [⏹]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в процессе. Нажмите, чтобы остановить."}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10002"}}]
execute if score active sgn1.settings matches 0 if score state sgn1.game matches 0 run tellraw @s [{"text":" ","color":"gray"},{"text":"Состояние: ","color":"gray"},{"text":"[❌]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Игра закрыта для игроков. Нажмите, чтобы поменять."}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10003"}},{"text":" ","color":"gray"},{"text":"[▶]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в ожидании игроков. Нажмите, чтобы начать."}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10001"}}]

execute if score active sgn1.settings matches 1 if score state sgn1.game matches 1 run tellraw @s [{"text":" ","color":"gray"},{"text":"Состояние: ","color":"gray"},{"text":"[✔]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Вайт-лист выключен. Нажмите чтобы поменять"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10005"}},{"text":" ","color":"gray"},{"text":" [⏹]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в процессе. Нажмите, чтобы остановить."}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10002"}}]
execute if score active sgn1.settings matches 1 if score state sgn1.game matches 0 run tellraw @s [{"text":" ","color":"gray"},{"text":"Состояние: ","color":"gray"},{"text":"[✔]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Вайт-лист выключен. Нажмите чтобы поменять"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10005"}},{"text":" ","color":"gray"},{"text":"[▶]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в ожидании игроков. Нажмите, чтобы начать."}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10001"}}]

execute if score active sgn1.settings matches 2 if score state sgn1.game matches 1 run tellraw @s [{"text":" ","color":"gray"},{"text":"Состояние: ","color":"gray"},{"text":"[⏹]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Вайт-лист включен. Нажмите, чтобы поменять."}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10004"}},{"text":" ","color":"gray"},{"text":" [⏹]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в процессе. Нажмите, чтобы остановить."}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10002"}}]
execute if score active sgn1.settings matches 2 if score state sgn1.game matches 0 run tellraw @s [{"text":" ","color":"gray"},{"text":"Состояние: ","color":"gray"},{"text":"[⏹]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Вайт-лист включен. Нажмите, чтобы поменять."}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10004"}},{"text":" ","color":"gray"},{"text":"[▶]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в ожидании игроков. Нажмите, чтобы начать."}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10001"}}]


execute if score ready_mode sgn1.settings matches 0 run tellraw @s [{"text":" ","color":"gray"},{"text":"Режим готовности: ","color":"gray"},{"text":"[Свободный]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Все игроки могут выбрать состояние готовности. Нажмите, чтобы поменять"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10008"}}]
execute if score ready_mode sgn1.settings matches 1 run tellraw @s [{"text":" ","color":"gray"},{"text":"Режим готовности: ","color":"gray"},{"text":"[Ограниченный 1]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Только не готовые игроки, могут выбрать состояние. Нажмите, чтобы поменять"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10008"}}]
execute if score ready_mode sgn1.settings matches 2 run tellraw @s [{"text":" ","color":"gray"},{"text":"Режим готовности: ","color":"gray"},{"text":"[Ограниченный 2]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Только готовые игроки, могут выбрать состояние. Нажмите, чтобы поменять"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10008"}}]
execute if score ready_mode sgn1.settings matches 3 run tellraw @s [{"text":" ","color":"gray"},{"text":"Режим готовности: ","color":"gray"},{"text":"[Запретный 1]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Все игроки всегда готовы. Нажмите, чтобы поменять"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10008"}}]
execute if score ready_mode sgn1.settings matches 4 run tellraw @s [{"text":" ","color":"gray"},{"text":"Режим готовности: ","color":"gray"},{"text":"[Запретный 2]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Все игроки всегда не готовы. Нажмите, чтобы поменять"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10008"}}]

execute if score teams_mode sgn1.settings matches 0 run tellraw @s [{"text":" ","color":"gray"},{"text":"Команды: ","color":"gray"},{"text":"[Свободный]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Разрешается входить, выходить и менять команду. Нажмите, чтобы поменять"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10009"}},{"text":" [⇄]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Перемешать команды"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10011"}}]
execute if score teams_mode sgn1.settings matches 1 run tellraw @s [{"text":" ","color":"gray"},{"text":"Команды: ","color":"gray"},{"text":"[Ограниченный 1]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Разрешается только выходить из команды. Нажмите, чтобы поменять"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10009"}},{"text":" [⇄]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Перемешать команды"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10011"}}]
execute if score teams_mode sgn1.settings matches 2 run tellraw @s [{"text":" ","color":"gray"},{"text":"Команды: ","color":"gray"},{"text":"[Ограниченный 2]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Разрешается только входить и менять команду. Нажмите, чтобы поменять"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10009"}},{"text":" [⇄]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Перемешать команды"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10011"}}]
execute if score teams_mode sgn1.settings matches 3 run tellraw @s [{"text":" ","color":"gray"},{"text":"Команды: ","color":"gray"},{"text":"[Запретный 1]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Разрешается только входить в команду. Нажмите, чтобы поменять"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10009"}},{"text":" [⇄]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Перемешать команды"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10011"}}]
execute if score teams_mode sgn1.settings matches 4 run tellraw @s [{"text":" ","color":"gray"},{"text":"Команды: ","color":"gray"},{"text":"[Запретный 2]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Входить, выходить и менять команду запрещено. Нажмите, чтобы поменять"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10009"}},{"text":" [⇄]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Перемешать команды"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10011"}}]

execute if score teams sgn1.settings matches 0 run tellraw @s [{"text":" ","color":"gray"},{"text":"Кол-во команд: ","color":"gray"},{"text":"[-] ","color":"gray"},{"color":"gold","score":{"objective":"sgn1.settings","name":"teams"}},{"text":" [+]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Увеличить"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10007"}}]
execute if score teams sgn1.settings matches 1..6 run tellraw @s [{"text":" ","color":"gray"},{"text":"Кол-во команд: ","color":"gray"},{"text":"[-] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Уменьшить"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10006"}},{"color":"gold","score":{"objective":"sgn1.settings","name":"teams"}},{"text":" [+]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Увеличить"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10007"}}]
execute if score teams sgn1.settings matches 7.. run tellraw @s [{"text":" ","color":"gray"},{"text":"Кол-во команд: ","color":"gray"},{"text":"[-] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Уменьшить"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10006"}},{"color":"gold","score":{"objective":"sgn1.settings","name":"teams"}},{"text":" [+]","color":"gray"}]



# execute if score state sgn1.game matches 1 run tellraw @s [{"text":" ","color":"gray"},{"text":" [⏹]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в процессе. Нажмите, чтобы остановить."}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10002"}}]
# execute if score state sgn1.game matches 0 run tellraw @s [{"text":" ","color":"gray"},{"text":"[▶]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Игра в ожидании игроков. Нажмите, чтобы начать."}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -10001"}}]

# ✔❌