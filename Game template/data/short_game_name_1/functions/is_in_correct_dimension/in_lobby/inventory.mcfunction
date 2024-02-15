scoreboard players set @s bool 1

execute if score teams tmp matches 0 unless score teams tmp = teams sgn1.settings run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item1_2
execute if score teams tmp matches 0 unless score teams tmp = teams sgn1.settings run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/items
execute if score teams tmp < teams sgn1.settings run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/items

#red team
    execute if score red tmp < max.red sgn1.settings if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[tag=!blocked_join,tag=!blocked_all,team=!sgn1.r_red,team=!sgn1.nr_red,nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item1_1
    clear @s[nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] #core:all_items{clear:1b,inventory:1b}
    execute if score red tmp < max.red sgn1.settings if score @s bool matches 1 if score teams tmp > teams sgn1.settings unless score teams sgn1.settings matches 1.. if entity @s[team=sgn1.r_red] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item1_2
    execute if score red tmp < max.red sgn1.settings if score @s bool matches 1 if score teams tmp > teams sgn1.settings unless score teams sgn1.settings matches 1.. if entity @s[team=sgn1.nr_red] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item1_2
    execute if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=sgn1.r_red,nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item1_2
    execute if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=sgn1.nr_red,nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item1_2
    clear @s[nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] #core:all_items{clear:1b,inventory:1b}
    execute if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[tag=blocked_all,nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[tag=blocked_join,nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[tag=blocked_leave,nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    clear @s[nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] #core:all_items{clear:1b,inventory:1b}
    execute if score red tmp >= max.red sgn1.settings if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_4
    clear @s[nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] #core:all_items{clear:1b,inventory:1b}

#

#green team
    execute if score green tmp < max.green sgn1.settings if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[tag=!blocked_join,tag=!blocked_all,team=!sgn1.r_green,team=!sgn1.nr_green,nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item2_1
    clear @s[nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] #core:all_items{clear:1b,inventory:2b}
    execute if score green tmp < max.green sgn1.settings if score @s bool matches 1 if score teams tmp > teams sgn1.settings unless score teams sgn1.settings matches 1.. if entity @s[team=sgn1.r_green] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item2_2
    execute if score green tmp < max.green sgn1.settings if score @s bool matches 1 if score teams tmp > teams sgn1.settings unless score teams sgn1.settings matches 1.. if entity @s[team=sgn1.nr_green] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item2_2
    execute if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=sgn1.r_green,nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item2_2
    execute if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=sgn1.nr_green,nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item2_2
    clear @s[nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] #core:all_items{clear:1b,inventory:2b}
    execute if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[tag=blocked_all,nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[tag=blocked_join,nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[tag=blocked_leave,nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    clear @s[nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] #core:all_items{clear:1b,inventory:2b}
    execute if score green tmp >= max.green sgn1.settings if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_4
    clear @s[nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] #core:all_items{clear:1b,inventory:2b}

#

#blue team
    execute if score blue tmp < max.blue sgn1.settings if score @s bool matches 1 if score teams sgn1.settings matches 2.. if entity @s[tag=!blocked_join,tag=!blocked_all,team=!sgn1.r_blue,team=!sgn1.nr_blue,nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item3_1
    clear @s[nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] #core:all_items{clear:1b,inventory:3b}
    execute if score blue tmp < max.blue sgn1.settings if score @s bool matches 1 if score teams tmp > teams sgn1.settings unless score teams sgn1.settings matches 2.. if entity @s[team=sgn1.r_blue] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item3_2
    execute if score blue tmp < max.blue sgn1.settings if score @s bool matches 1 if score teams tmp > teams sgn1.settings unless score teams sgn1.settings matches 2.. if entity @s[team=sgn1.nr_blue] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item3_2
    execute if score @s bool matches 1 if score teams sgn1.settings matches 2.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=sgn1.r_blue,nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item3_2
    execute if score @s bool matches 1 if score teams sgn1.settings matches 2.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=sgn1.nr_blue,nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item3_2
    clear @s[nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] #core:all_items{clear:1b,inventory:3b}
    execute if score @s bool matches 1 if score teams sgn1.settings matches 2.. if entity @s[tag=blocked_all,nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams sgn1.settings matches 2.. if entity @s[tag=blocked_join,nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams sgn1.settings matches 2.. if entity @s[tag=blocked_leave,nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    clear @s[nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] #core:all_items{clear:1b,inventory:3b}
    execute if score blue tmp >= max.blue sgn1.settings if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_4
    clear @s[nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] #core:all_items{clear:1b,inventory:3b}
#

#yellow team
    execute if score yellow tmp < max.yellow sgn1.settings if score @s bool matches 1 if score teams sgn1.settings matches 3.. if entity @s[tag=!blocked_join,tag=!blocked_all,team=!sgn1.r_yellow,team=!sgn1.nr_yellow,nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item4_1
    clear @s[nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] #core:all_items{clear:1b,inventory:4b}
    execute if score yellow tmp < max.yellow sgn1.settings if score @s bool matches 1 if score teams tmp > teams sgn1.settings unless score teams sgn1.settings matches 3.. if entity @s[team=sgn1.nr_yellow] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item4_2
    execute if score yellow tmp < max.yellow sgn1.settings if score @s bool matches 1 if score teams tmp > teams sgn1.settings unless score teams sgn1.settings matches 3.. if entity @s[team=sgn1.r_yellow] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item4_2
    execute if score @s bool matches 1 if score teams sgn1.settings matches 3.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=sgn1.r_yellow,nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item4_2
    execute if score @s bool matches 1 if score teams sgn1.settings matches 3.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=sgn1.nr_yellow,nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item4_2
    clear @s[nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] #core:all_items{clear:1b,inventory:4b}
    execute if score @s bool matches 1 if score teams sgn1.settings matches 3.. if entity @s[tag=blocked_all,nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams sgn1.settings matches 3.. if entity @s[tag=blocked_join,nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams sgn1.settings matches 3.. if entity @s[tag=blocked_leave,nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    clear @s[nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] #core:all_items{clear:1b,inventory:4b}
    execute if score yellow tmp >= max.yellow sgn1.settings if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_4
    clear @s[nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] #core:all_items{clear:1b,inventory:4b}
#

#dark_red team
    execute if score dark_red tmp < max.dark_red sgn1.settings if score @s bool matches 1 if score teams sgn1.settings matches 4.. if entity @s[tag=!blocked_join,tag=!blocked_all,team=!sgn1.r_dark_red,team=!sgn1.nr_dark_red,nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item5_1
    clear @s[nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] #core:all_items{clear:1b,inventory:5b}
    execute if score dark_red tmp < max.dark_red sgn1.settings if score @s bool matches 1 if score teams tmp > teams sgn1.settings unless score teams sgn1.settings matches 4.. if entity @s[team=sgn1.r_dark_red] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item5_2
    execute if score dark_red tmp < max.dark_red sgn1.settings if score @s bool matches 1 if score teams tmp > teams sgn1.settings unless score teams sgn1.settings matches 4.. if entity @s[team=sgn1.nr_dark_red] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item5_2
    execute if score @s bool matches 1 if score teams sgn1.settings matches 4.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=sgn1.r_dark_red,nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item5_2
    execute if score @s bool matches 1 if score teams sgn1.settings matches 4.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=sgn1.nr_dark_red,nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item5_2
    clear @s[nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] #core:all_items{clear:1b,inventory:5b}
    execute if score @s bool matches 1 if score teams sgn1.settings matches 4.. if entity @s[tag=blocked_all,nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams sgn1.settings matches 4.. if entity @s[tag=blocked_join,nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams sgn1.settings matches 4.. if entity @s[tag=blocked_leave,nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    clear @s[nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] #core:all_items{clear:1b,inventory:5b}
    execute if score dark_red tmp >= max.dark_red sgn1.settings if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_4
    clear @s[nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] #core:all_items{clear:1b,inventory:5b}
#

#dark_green team
    execute if score dark_green tmp < max.dark_green sgn1.settings if score @s bool matches 1 if score teams sgn1.settings matches 5.. if entity @s[tag=!blocked_join,tag=!blocked_all,team=!sgn1.r_dark_green,team=!sgn1.nr_dark_green,nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item6_1
    clear @s[nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] #core:all_items{clear:1b,inventory:6b}
    execute if score dark_green tmp < max.dark_green sgn1.settings if score @s bool matches 1 if score teams tmp > teams sgn1.settings unless score teams sgn1.settings matches 5.. if entity @s[team=sgn1.r_dark_green] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item6_2
    execute if score dark_green tmp < max.dark_green sgn1.settings if score @s bool matches 1 if score teams tmp > teams sgn1.settings unless score teams sgn1.settings matches 5.. if entity @s[team=sgn1.nr_dark_green] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item6_2
    execute if score @s bool matches 1 if score teams sgn1.settings matches 5.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=sgn1.r_dark_green,nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item6_2
    execute if score @s bool matches 1 if score teams sgn1.settings matches 5.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=sgn1.nr_dark_green,nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item6_2
    clear @s[nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] #core:all_items{clear:1b,inventory:6b}
    execute if score @s bool matches 1 if score teams sgn1.settings matches 5.. if entity @s[tag=blocked_all,nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams sgn1.settings matches 5.. if entity @s[tag=blocked_join,nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams sgn1.settings matches 5.. if entity @s[tag=blocked_leave,nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    clear @s[nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] #core:all_items{clear:1b,inventory:6b}
    execute if score dark_green tmp >= max.dark_green sgn1.settings if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_4
    clear @s[nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] #core:all_items{clear:1b,inventory:6b}
#

#dark_blue team
    execute if score dark_blue tmp < max.dark_blue sgn1.settings if score @s bool matches 1 if score teams sgn1.settings matches 6.. if entity @s[tag=!blocked_join,tag=!blocked_all,team=!sgn1.r_dark_blue,team=!sgn1.nr_dark_blue,nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item7_1
    clear @s[nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] #core:all_items{clear:1b,inventory:7b}
    execute if score dark_blue tmp < max.dark_blue sgn1.settings if score @s bool matches 1 if score teams tmp > teams sgn1.settings unless score teams sgn1.settings matches 6.. if entity @s[team=sgn1.r_dark_blue] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item7_2
    execute if score dark_blue tmp < max.dark_blue sgn1.settings if score @s bool matches 1 if score teams tmp > teams sgn1.settings unless score teams sgn1.settings matches 6.. if entity @s[team=sgn1.nr_dark_blue] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item7_2
    execute if score @s bool matches 1 if score teams sgn1.settings matches 6.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=sgn1.r_dark_blue,nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item7_2
    execute if score @s bool matches 1 if score teams sgn1.settings matches 6.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=sgn1.nr_dark_blue,nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item7_2
    clear @s[nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] #core:all_items{clear:1b,inventory:7b}
    execute if score @s bool matches 1 if score teams sgn1.settings matches 6.. if entity @s[tag=blocked_all,nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams sgn1.settings matches 6.. if entity @s[tag=blocked_join,nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams sgn1.settings matches 6.. if entity @s[tag=blocked_leave,nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    clear @s[nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] #core:all_items{clear:1b,inventory:7b}
    execute if score dark_blue tmp >= max.dark_blue sgn1.settings if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_4
    clear @s[nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] #core:all_items{clear:1b,inventory:7b}
#

#gold team
    execute if score gold tmp < max.gold sgn1.settings if score @s bool matches 1 if score teams sgn1.settings matches 7.. if entity @s[tag=!blocked_join,tag=!blocked_all,team=!sgn1.r_gold,team=!sgn1.nr_gold,nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item8_1
    clear @s[nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] #core:all_items{clear:1b,inventory:8b}
    execute if score gold tmp < max.gold sgn1.settings if score @s bool matches 1 if score teams tmp > teams sgn1.settings unless score teams sgn1.settings matches 7.. if entity @s[team=sgn1.r_gold] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item8_2
    execute if score gold tmp < max.gold sgn1.settings if score @s bool matches 1 if score teams tmp > teams sgn1.settings unless score teams sgn1.settings matches 7.. if entity @s[team=sgn1.nr_gold] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item8_2
    execute if score @s bool matches 1 if score teams sgn1.settings matches 7.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=sgn1.r_gold,nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item8_2
    execute if score @s bool matches 1 if score teams sgn1.settings matches 7.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=sgn1.nr_gold,nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/item8_2
    clear @s[nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] #core:all_items{clear:1b,inventory:8b}
    execute if score @s bool matches 1 if score teams sgn1.settings matches 7.. if entity @s[tag=blocked_all,nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams sgn1.settings matches 7.. if entity @s[tag=blocked_join,nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams sgn1.settings matches 7.. if entity @s[tag=blocked_leave,nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_3
    clear @s[nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] #core:all_items{clear:1b,inventory:8b}
    execute if score gold tmp >= max.gold sgn1.settings if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/itemall_4
    clear @s[nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] #core:all_items{clear:1b,inventory:8b}
#

scoreboard players reset @s bool
function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/items
