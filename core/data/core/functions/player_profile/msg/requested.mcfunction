scoreboard players operation id_search tmp = @s msg
function core:player_profile/find_by_id


execute unless score @s id = @s msg if entity @s[tag=!msg_sent_blocked] if score profile_found bool matches 0 run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Такой игрок не был найден","color":"red","italic":false}]

execute if entity @s[tag=msg_sent_blocked] run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Отказано в запросе: оператор запретил вам рассылать сообщения","color":"red","italic":false}]

execute store result score msg tmp run data get storage core:profiles tmp.settings.messages

execute unless score @s id = @s msg if score msg tmp matches 0 if entity @s[tag=!msg_sent_blocked] if score profile_found bool matches 1 run function core:player_profile/msg/request_approved

execute if score @s id = @s msg run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Отказано в запросе: вы не можете отправить сообщение самому себе","color":"red","italic":false}]


execute unless score @s id = @s msg if score msg tmp matches 2 if entity @s[tag=!msg_sent_blocked] run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Отказано в запросе: игрок отключил приём сообщений","color":"red","italic":false}]


function core:player_profile/find_by_friend
execute unless score @s id = @s msg if score msg tmp matches 1 if entity @s[tag=!msg_sent_blocked] if score friend_found bool matches 1 run function core:player_profile/msg/request_approved
execute unless score @s id = @s msg if score msg tmp matches 1 if entity @s[tag=!msg_sent_blocked] if score friend_found bool matches 0 run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Отказано в запросе: игрок принимает сообщения только от друзей","color":"red","italic":false}]
