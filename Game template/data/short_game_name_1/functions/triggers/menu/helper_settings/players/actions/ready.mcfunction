execute store result score tmp_id tmp run data get storage core:storage tmp_table[0].playerId
execute as @a if score @s id = tmp_id tmp run tag @s add tmp

tag @e[tag=tmp,limit=1] add sgn1.ready
team join sgn1.r_red @e[team=sgn1.nr_red,tag=tmp,limit=1]
team join sgn1.r_green @e[team=sgn1.nr_green,tag=tmp,limit=1]
team join sgn1.r_blue @e[team=sgn1.nr_blue,tag=tmp,limit=1]
team join sgn1.r_yellow @e[team=sgn1.nr_yellow,tag=tmp,limit=1]
team join sgn1.r_dark_red @e[team=sgn1.nr_dark_red,tag=tmp,limit=1]
team join sgn1.r_dark_blue @e[team=sgn1.nr_dark_blue,tag=tmp,limit=1]
team join sgn1.r_darK_green @e[team=sgn1.nr_darK_green,tag=tmp,limit=1]
team join sgn1.r_gold @e[team=sgn1.nr_gold,tag=tmp,limit=1]

scoreboard players set @s menu -2411