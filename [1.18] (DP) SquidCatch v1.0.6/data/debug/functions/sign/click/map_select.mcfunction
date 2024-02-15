scoreboard players reset @s offset
execute if entity @e[tag=scroll_right,distance=...06] if score map settings matches ..6 run scoreboard players add map settings 1
execute if entity @e[tag=scroll_left,distance=...06] if score map settings matches 1.. run scoreboard players remove map settings 1

function debug:sign/update/map_select