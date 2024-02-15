execute if score teams sgn1.settings matches 1.. run team join sgn1.nr_red @r[team=lobby]
execute if score teams sgn1.settings matches 1.. run team join sgn1.nr_green @r[team=lobby]
execute if score teams sgn1.settings matches 2.. run team join sgn1.nr_blue @r[team=lobby]
execute if score teams sgn1.settings matches 3.. run team join sgn1.nr_yellow @r[team=lobby]
execute if score teams sgn1.settings matches 4.. run team join sgn1.nr_dark_red @r[team=lobby]
execute if score teams sgn1.settings matches 5.. run team join sgn1.nr_dark_green @r[team=lobby]
execute if score teams sgn1.settings matches 6.. run team join sgn1.nr_dark_blue @r[team=lobby]
execute if score teams sgn1.settings matches 7.. run team join sgn1.nr_gold @r[team=lobby]

execute if entity @a[team=lobby] run function control:short_game_name_1/rnd_teams/loop