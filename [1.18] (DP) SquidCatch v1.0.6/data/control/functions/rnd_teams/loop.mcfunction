execute store result score players calc run team list nr_red
execute if score teams settings matches 1.. run team join nr_red @r[team=lobby]

execute store result score players calc run team list nr_green
execute if score teams settings matches 1.. run team join nr_green @r[team=lobby]

execute store result score players calc run team list nr_blue
execute if score teams settings matches 2.. run team join nr_blue @r[team=lobby]

execute store result score players calc run team list nr_yellow
execute if score teams settings matches 3.. run team join nr_yellow @r[team=lobby]

execute store result score players calc run team list nr_dark_red
execute if score teams settings matches 4.. run team join nr_dark_red @r[team=lobby]

execute store result score players calc run team list nr_dark_green
execute if score teams settings matches 5.. run team join nr_dark_green @r[team=lobby]

execute store result score players calc run team list nr_dark_blue
execute if score teams settings matches 6.. run team join nr_dark_blue @r[team=lobby]

execute store result score players calc run team list nr_gold
execute if score teams settings matches 7.. run team join nr_gold @r[team=lobby]

execute if entity @a[team=lobby] run function debug:errors/no_teams_found/loop