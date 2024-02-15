scoreboard players reset @s offset
execute if entity @e[tag=scroll_right,distance=...06] run scoreboard players add mode settings 1
execute if entity @e[tag=scroll_left,distance=...06] run scoreboard players remove mode settings 1
execute if entity @e[tag=!add_teams,tag=!remove_teams,distance=...06] run scoreboard players operation teams settings >< teams_tmp settings
execute if score mode settings matches 2.. run scoreboard players set mode settings 0
execute unless score mode settings matches 0.. run scoreboard players set mode settings 1


execute if score mode settings matches 1.. if entity @e[tag=add_teams,distance=...06] run scoreboard players add teams settings 1
execute if score mode settings matches 1.. if entity @e[tag=remove_teams,distance=...06] run scoreboard players remove teams settings 1
execute if score mode settings matches 1.. if score teams settings matches 8.. run scoreboard players set teams settings 1
execute if score mode settings matches 1.. unless score teams settings matches 1.. run scoreboard players set teams settings 7


function debug:sign/update/mode_select