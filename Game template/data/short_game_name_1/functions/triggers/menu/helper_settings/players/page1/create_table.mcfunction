

scoreboard players operation @s tmp_id = id tmp_id
scoreboard players add id tmp_id 1


scoreboard players operation id_search tmp = @s id
function core:player_profile/find_by_id
data modify storage core:storage tmp_table append value {name:"",cur_dim:"",playerId:0}
data modify storage core:storage tmp_table[0].name set from storage core:profiles tmp.name
data modify storage core:storage tmp_table[0].playerId set from storage core:profiles tmp.playerId

execute if score @s cur_dim matches 0 run data modify storage core:storage tmp_table[0].cur_dim set value "Лобби"
execute if score @s cur_dim matches 1 run data modify storage core:storage tmp_table[0].cur_dim set from storage core:storage game_titles[0]
execute if score @s cur_dim matches 2 run data modify storage core:storage tmp_table[0].cur_dim set from storage core:storage game_titles[1]
execute if score @s cur_dim matches 3 run data modify storage core:storage tmp_table[0].cur_dim set from storage core:storage game_titles[2]
execute if score @s cur_dim matches 4 run data modify storage core:storage tmp_table[0].cur_dim set from storage core:storage game_titles[3]
execute if score @s cur_dim matches 5 run data modify storage core:storage tmp_table[0].cur_dim set from storage core:storage game_titles[4]
execute if score @s cur_dim matches 6 run data modify storage core:storage tmp_table[0].cur_dim set from storage core:storage game_titles[5]
execute if score @s cur_dim matches 7 run data modify storage core:storage tmp_table[0].cur_dim set from storage core:storage game_titles[6]
execute if score @s cur_dim matches 8 run data modify storage core:storage tmp_table[0].cur_dim set from storage core:storage game_titles[7]
execute if score @s cur_dim matches 9 run data modify storage core:storage tmp_table[0].cur_dim set from storage core:storage game_titles[8]
