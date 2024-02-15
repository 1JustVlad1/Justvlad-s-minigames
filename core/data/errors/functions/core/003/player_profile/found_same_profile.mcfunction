tellraw @a[gamemode=!adventure] [{"text":"[","color":"gray"},{"text":"Ошибка","color":"red"},{"text":"] ","color":"gray"},{"text":"Код ошибки: ","color":"white"},{"text":"003_core.found_same_profile ","color":"gray"},{"text":"[?]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Профиль игрока: "},{"score":{"objective":"tmp","name":"id_search"},"color":"green"},{"text":" был найден при создании нового профиля. Старый профиль был заменён и сохранён в логи."}]}}]


data modify storage core:errors core.log prepend value {Error:'{"text":"003_core.found_same_profile"}',timestamp:0l,id_searched:0l,profile:{}}
data modify storage core:errors log prepend value {Error:'{"text":"003_core.found_same_profile"}',timestamp:0l,id_searched:0l,profile:{}}
execute store result storage core:errors core.log[0].timestamp long 1 run time query gametime
execute store result storage core:errors log[0].timestamp long 1 run time query gametime
execute store result storage core:errors core.log[0].id_searched long 1 run scoreboard players get id_search tmp
execute store result storage core:errors log[0].id_searched long 1 run scoreboard players get id_search tmp


data modify storage core:errors core.log[0].profile set from storage core:profiles tmp
data modify storage core:errors log[0].profile set from storage core:profiles tmp
