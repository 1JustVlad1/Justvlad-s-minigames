data modify storage core:storage tmp set value {}

execute if score @s prev_game matches 1 run data modify storage core:storage tmp.rejoin_game_title set from storage core:storage game_titles[0]
execute if score @s prev_game matches 2 run data modify storage core:storage tmp.rejoin_game_title set from storage core:storage game_titles[1]
execute if score @s prev_game matches 3 run data modify storage core:storage tmp.rejoin_game_title set from storage core:storage game_titles[2]
execute if score @s prev_game matches 4 run data modify storage core:storage tmp.rejoin_game_title set from storage core:storage game_titles[3]
execute if score @s prev_game matches 5 run data modify storage core:storage tmp.rejoin_game_title set from storage core:storage game_titles[4]
execute if score @s prev_game matches 6 run data modify storage core:storage tmp.rejoin_game_title set from storage core:storage game_titles[5]
execute if score @s prev_game matches 7 run data modify storage core:storage tmp.rejoin_game_title set from storage core:storage game_titles[6]
execute if score @s prev_game matches 8 run data modify storage core:storage tmp.rejoin_game_title set from storage core:storage game_titles[7]
execute if score @s prev_game matches 9 run data modify storage core:storage tmp.rejoin_game_title set from storage core:storage game_titles[8]

scoreboard players operation rejoin_timer calc = @s rejoin_timer

execute store result score m calc store result score s calc run scoreboard players operation rejoin_timer calc /= 20 const
scoreboard players operation m calc /= 60 const
scoreboard players operation s calc %= 60 const

execute if score s calc matches 10.. run title @s actionbar [{"nbt":"tmp.rejoin_game_title","storage":"core:storage","color":"gold"},{"text":" "},{"score":{"objective":"calc","name":"m"},"color":"white"},{"text":":","color":"white"},{"score":{"objective":"calc","name":"s"},"color":"white"},{"text":" /trigger rejoin","color":"gray","italic":true}]
execute if score s calc matches 0..9 run title @s actionbar [{"nbt":"tmp.rejoin_game_title","storage":"core:storage","color":"gold"},{"text":" "},{"score":{"objective":"calc","name":"m"},"color":"white"},{"text":":0","color":"white"},{"score":{"objective":"calc","name":"s"},"color":"white"},{"text":" /trigger rejoin","color":"gray","italic":true}]