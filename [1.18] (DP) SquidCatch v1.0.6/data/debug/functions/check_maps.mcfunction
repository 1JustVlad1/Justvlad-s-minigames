scoreboard players set map_id tmp -1000
function debug:errors/check_maps_loop

tellraw @s [{"text":"[","color":"gray"},{"text":"Debug","color":"red"},{"text":"] ","color":"gray"},{"text":"Проверка ID карт ","color":"white"},{"text":"[?]","color":"green","hoverEvent":{"action":"show_text","contents":"Возможно нужно поменять ID\nНажмите здесь, чтобы получить команду"},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set map settings #"}}]
execute if entity @e[tag=maps] run tellraw @s [{"text":"- ","color":"gray"},{"text":"ID существующих карт: ","color":"white"},{"selector":"@e[tag=maps]","color":"yellow"}]
execute unless entity @e[tag=maps] run tellraw @s [{"text":"- ","color":"gray"},{"text":"ID существующих карт: ","color":"white"},{"text":"Не найдено","color":"red"}]
tellraw @s [{"text":"- ","color":"gray"},{"text":"ID текущей карты: ","color":"white"},{"score":{"name":"map","objective":"settings"},"color":"yellow"}]
kill @e[tag=maps]