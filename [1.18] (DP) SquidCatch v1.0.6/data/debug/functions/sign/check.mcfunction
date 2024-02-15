execute if score lobby_signs settings matches 0 if entity @s[gamemode=creative] run function debug:sign/click
execute if score lobby_signs settings matches 0 if entity @s[gamemode=!creative] run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"text":"Игра","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Оператор запретил использовать это!","color":"red"}]

execute if score lobby_signs settings matches 1 run function debug:sign/click
tag @s add msg_cooldown