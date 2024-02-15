execute if score @s month matches 1 run scoreboard players set month settings 1
execute if score @s month matches 2 run scoreboard players set month settings 2
execute if score @s month matches 3 run scoreboard players set month settings 3
execute if score @s month matches 4 run scoreboard players set month settings 4
execute if score @s month matches 5 run scoreboard players set month settings 5
execute if score @s month matches 6 run scoreboard players set month settings 6
execute if score @s month matches 7 run scoreboard players set month settings 7
execute if score @s month matches 8 run scoreboard players set month settings 8
execute if score @s month matches 9 run scoreboard players set month settings 9
execute if score @s month matches 10 run scoreboard players set month settings 10
execute if score @s month matches 11 run scoreboard players set month settings 11
execute if score @s month matches 12 run scoreboard players set month settings 12
 
execute unless score @s month matches 1..12 run scoreboard players set month settings 5
tellraw @s [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Установлен месяц сервера: ","color":"white","italic":false},{"score":{"objective":"settings","name":"month"}}]

function build:load