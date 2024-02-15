scoreboard players set tmp rng 3
function core:rng

execute as @e[tag=spawn] if score @s map = map settings run tag @s add tmp
execute positioned as @e[tag=tmp,limit=1,sort=random] run tp @e[nbt={HurtTime:10s},limit=1] ~ ~ ~ ~ ~
tag @e remove tmp

effect give @s blindness 2 0 true
execute if score calc rng matches 2 run function game:state/in_game/events/guards_1
execute if score calc rng matches 3 run function game:state/in_game/events/guards_2