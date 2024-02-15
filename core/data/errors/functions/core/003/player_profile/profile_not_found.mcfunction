execute if score id_search tmp matches 0.. run tellraw @a[gamemode=!adventure] [{"text":"[","color":"gray"},{"text":"Ошибка","color":"red"},{"text":"] ","color":"gray"},{"text":"Код ошибки: ","color":"white"},{"text":"003_core.pofile_not_found ","color":"gray"},{"text":"[?]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Профиль игрока: "},{"score":{"objective":"tmp","name":"id_search"},"color":"green"},{"text":" не был найден"}]}}]
execute unless score id_search tmp matches 1.. run tellraw @a[gamemode=!adventure] [{"text":"[","color":"gray"},{"text":"Ошибка","color":"red"},{"text":"] ","color":"gray"},{"text":"Код ошибки: ","color":"white"},{"text":"003_core.pofile_not_found ","color":"gray"},{"text":"[?]","color":"green","hoverEvent":{"action":"show_text","contents":{"text":"Id не указан"}}}]


data modify storage core:errors core.log prepend value {Error:'{"text":"003_core.pofile_not_found"}',timestamp:0l,id_searched:0l}
data modify storage core:errors log prepend value {Error:'{"text":"003_core.pofile_not_found"}',timestamp:0l,id_searched:0l}
execute store result storage core:errors core.log[0].timestamp long 1 run time query gametime
execute store result storage core:errors log[0].timestamp long 1 run time query gametime
execute store result storage core:errors core.log[0].id_searched long 1 run scoreboard players get id_search tmp
execute store result storage core:errors log[0].id_searched long 1 run scoreboard players get id_search tmp