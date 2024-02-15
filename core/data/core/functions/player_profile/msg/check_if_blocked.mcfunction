scoreboard players operation id_search tmp = @s msg
function core:player_profile/find_by_id
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1000 2


function core:player_profile/msg/search_blacklist

execute if entity @s[tag=event_helper] run scoreboard players set blacklisted bool 0
execute if entity @s[tag=owner] run scoreboard players set blacklisted bool 0
execute if score blacklisted bool matches 1 run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Отказано в запросе: игрок внёс вас в чёрный список","color":"red","italic":false}]
execute if score blacklisted bool matches 0 run function core:player_profile/msg/requested

tag @s add msg_cooldown