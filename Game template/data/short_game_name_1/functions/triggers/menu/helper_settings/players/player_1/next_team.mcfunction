execute store result score tmp_id tmp run data get storage core:storage tmp_table[0].playerId
execute as @a if score @s id = tmp_id tmp run tag @s add tmp

tag @e[tag=tmp,limit=1] remove sgn1.ready

execute if score teams sgn1.settings matches 0 if score @e[tag=tmp,limit=1] team matches 3 run team join lobby @e[tag=tmp,limit=1]
execute if score teams sgn1.settings matches 0 if score @e[tag=tmp,limit=1] team matches 0 run team join sgn1.blue @e[tag=tmp,limit=1]
execute if score teams sgn1.settings matches 0 if score @e[tag=tmp,limit=1] team matches 0 run tag @e[tag=tmp,limit=1] add sgn1.ready



execute if score teams sgn1.settings matches 1.. if score @e[tag=tmp,limit=1] team matches 0 run team join sgn1.nr_red @e[tag=tmp,limit=1]
execute if score teams sgn1.settings matches 1.. if score @e[tag=tmp,limit=1] team matches 1 run team join sgn1.nr_green @e[tag=tmp,limit=1]
execute if score teams sgn1.settings matches 1.. if score @e[tag=tmp,limit=1] team matches 2 run team join sgn1.nr_blue @e[tag=tmp,limit=1]
execute if score teams sgn1.settings matches 1.. if score @e[tag=tmp,limit=1] team matches 3 run team join sgn1.nr_yellow @e[tag=tmp,limit=1]
execute if score teams sgn1.settings matches 1.. if score @e[tag=tmp,limit=1] team matches 4 run team join sgn1.nr_dark_red @e[tag=tmp,limit=1]
execute if score teams sgn1.settings matches 1.. if score @e[tag=tmp,limit=1] team matches 5 run team join sgn1.nr_dark_green @e[tag=tmp,limit=1]
execute if score teams sgn1.settings matches 1.. if score @e[tag=tmp,limit=1] team matches 6 run team join sgn1.nr_dark_blue @e[tag=tmp,limit=1]
execute if score teams sgn1.settings matches 1.. if score @e[tag=tmp,limit=1] team matches 7 run team join sgn1.nr_gold @e[tag=tmp,limit=1]
execute if score teams sgn1.settings matches 1.. if score @e[tag=tmp,limit=1] team matches 8 run team join lobby @e[tag=tmp,limit=1]


scoreboard players set @s menu -2411