tellraw @s [{"text":"[","color":"gray"},{"text":"Ошибка","color":"red"},{"text":"] ","color":"gray"},{"text":"Код ошибки: ","color":"white"},{"text":"001_l.inccorect_dimension ","color":"gray"},{"text":"[?]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Выполнение команды было остановлено!\n"},{"text":"Нажмите, чтобы выполнить\nв любом случае.","color":"gray","italic":"true"},{"text":" Опасно!","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function lobby:is_in_correct_dimension/debug/summon/spawn"}}]


data modify storage core:errors lobby.log prepend value {Error:'{"text":"001_l"}',timestamp:0l}
data modify storage core:errors log prepend value {Error:'{"text":"001_l"}',timestamp:0l}
execute store result storage core:errors lobby.log[0].timestamp long 1 run time query gametime
execute store result storage core:errors log[0].timestamp long 1 run time query gametime