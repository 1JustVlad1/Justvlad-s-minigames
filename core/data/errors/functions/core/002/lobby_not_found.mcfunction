tellraw @a [{"text":"[","color":"gray"},{"text":"Ошибка","color":"red"},{"text":"] ","color":"gray"},{"text":"Код ошибки: ","color":"white"},{"text":"002_core.lobby_not_found ","color":"gray"},{"text":"[?]","color":"green","hoverEvent":{"action":"show_text","contents":"Ядро нуждается в лобби, игры могут работать нестабильно!"}}]


data modify storage core:errors core.log prepend value {Error:'{"text":"002_core.lobby_not_found"}',timestamp:0l}
data modify storage core:errors log prepend value {Error:'{"text":"002_core.lobby_not_found"}',timestamp:0l}
execute store result storage core:errors core.log[0].timestamp long 1 run time query gametime
execute store result storage core:errors log[0].timestamp long 1 run time query gametime