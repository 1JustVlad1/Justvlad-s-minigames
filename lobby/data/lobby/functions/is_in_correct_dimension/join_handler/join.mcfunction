tellraw @s[predicate=!lobby:lobby_check,tag=!msg_cooldown] [{"text":"[","color":"gray"},{"text":"Лобби","color":"yellow"},{"text":"] ","color":"gray"},{"text":"Подготовка телепортации...","color":"gray","italic":true}]

execute unless entity @e[tag=main,tag=lobby,tag=spawn] run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"text":"Лобби","color":"yellow"},{"text":"] ","color":"gray"},{"text":"Телепортация отменена: попробуйте позже или обратитесь к оператору.","color":"red"}]


tag @s add msg_cooldown

function control:lobby/tp

execute if entity @e[tag=lobby,tag=main,tag=spawn] run function lobby:is_in_correct_dimension/join_handler/joined
execute unless entity @e[tag=lobby,tag=main,tag=spawn] run function errors:lobby/003/spawn_not_found

