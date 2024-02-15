summon marker ~ ~ ~ {Tags:["tool","all","spawn","tmp"]}
forceload add ~ ~
scoreboard players operation @e[tag=tmp] map = map settings
# scoreboard players add @e[tag=tmp] map 1
tag @e remove tmp