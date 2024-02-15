scoreboard players set @s bool 1

execute if score teams tmp matches 0 unless score teams tmp = teams settings run function game:state/in_lobby/inventory/item1_2
execute if score teams tmp matches 0 unless score teams tmp = teams settings run function game:state/in_lobby/inventory/items
execute if score teams tmp < teams settings run function game:state/in_lobby/inventory/items

#red team
    execute if score red tmp < red teams_max if score @s bool matches 1 if score teams settings matches 1.. if entity @s[tag=!blocked_join,tag=!blocked_all,team=!r_red,team=!nr_red,nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] run function game:state/in_lobby/inventory/item1_1
    clear @s[nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] #core:all_items{clear:1b,inventory:1b}
    execute if score red tmp < red teams_max if score @s bool matches 1 if score teams tmp > teams settings unless score teams settings matches 1.. if entity @s[team=r_red] run function game:state/in_lobby/inventory/item1_2
    execute if score red tmp < red teams_max if score @s bool matches 1 if score teams tmp > teams settings unless score teams settings matches 1.. if entity @s[team=nr_red] run function game:state/in_lobby/inventory/item1_2
    execute if score @s bool matches 1 if score teams settings matches 1.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=r_red,nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] run function game:state/in_lobby/inventory/item1_2
    execute if score @s bool matches 1 if score teams settings matches 1.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=nr_red,nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] run function game:state/in_lobby/inventory/item1_2
    clear @s[nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] #core:all_items{clear:1b,inventory:1b}
    execute if score @s bool matches 1 if score teams settings matches 1.. if entity @s[tag=blocked_all,nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] run function game:state/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams settings matches 1.. if entity @s[tag=blocked_join,nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] run function game:state/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams settings matches 1.. if entity @s[tag=blocked_leave,nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] run function game:state/in_lobby/inventory/itemall_3
    clear @s[nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] #core:all_items{clear:1b,inventory:1b}
    execute if score red tmp >= red teams_max if score @s bool matches 1 if score teams settings matches 1.. if entity @s[nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] run function game:state/in_lobby/inventory/itemall_4
    clear @s[nbt=!{Inventory:[{Slot:9b,tag:{inventory:1b}}]}] #core:all_items{clear:1b,inventory:1b}

#

#green team
    execute if score green tmp < green teams_max if score @s bool matches 1 if score teams settings matches 1.. if entity @s[tag=!blocked_join,tag=!blocked_all,team=!r_green,team=!nr_green,nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] run function game:state/in_lobby/inventory/item2_1
    clear @s[nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] #core:all_items{clear:1b,inventory:2b}
    execute if score green tmp < green teams_max if score @s bool matches 1 if score teams tmp > teams settings unless score teams settings matches 1.. if entity @s[team=r_green] run function game:state/in_lobby/inventory/item2_2
    execute if score green tmp < green teams_max if score @s bool matches 1 if score teams tmp > teams settings unless score teams settings matches 1.. if entity @s[team=nr_green] run function game:state/in_lobby/inventory/item2_2
    execute if score @s bool matches 1 if score teams settings matches 1.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=r_green,nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] run function game:state/in_lobby/inventory/item2_2
    execute if score @s bool matches 1 if score teams settings matches 1.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=nr_green,nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] run function game:state/in_lobby/inventory/item2_2
    clear @s[nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] #core:all_items{clear:1b,inventory:2b}
    execute if score @s bool matches 1 if score teams settings matches 1.. if entity @s[tag=blocked_all,nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] run function game:state/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams settings matches 1.. if entity @s[tag=blocked_join,nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] run function game:state/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams settings matches 1.. if entity @s[tag=blocked_leave,nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] run function game:state/in_lobby/inventory/itemall_3
    clear @s[nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] #core:all_items{clear:1b,inventory:2b}
    execute if score green tmp >= green teams_max if score @s bool matches 1 if score teams settings matches 1.. if entity @s[nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] run function game:state/in_lobby/inventory/itemall_4
    clear @s[nbt=!{Inventory:[{Slot:10b,tag:{inventory:2b}}]}] #core:all_items{clear:1b,inventory:2b}

#

#blue team
    execute if score blue tmp < blue teams_max if score @s bool matches 1 if score teams settings matches 2.. if entity @s[tag=!blocked_join,tag=!blocked_all,team=!r_blue,team=!nr_blue,nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] run function game:state/in_lobby/inventory/item3_1
    clear @s[nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] #core:all_items{clear:1b,inventory:3b}
    execute if score blue tmp < blue teams_max if score @s bool matches 1 if score teams tmp > teams settings unless score teams settings matches 2.. if entity @s[team=r_blue] run function game:state/in_lobby/inventory/item3_2
    execute if score blue tmp < blue teams_max if score @s bool matches 1 if score teams tmp > teams settings unless score teams settings matches 2.. if entity @s[team=nr_blue] run function game:state/in_lobby/inventory/item3_2
    execute if score @s bool matches 1 if score teams settings matches 2.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=r_blue,nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] run function game:state/in_lobby/inventory/item3_2
    execute if score @s bool matches 1 if score teams settings matches 2.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=nr_blue,nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] run function game:state/in_lobby/inventory/item3_2
    clear @s[nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] #core:all_items{clear:1b,inventory:3b}
    execute if score @s bool matches 1 if score teams settings matches 2.. if entity @s[tag=blocked_all,nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] run function game:state/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams settings matches 2.. if entity @s[tag=blocked_join,nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] run function game:state/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams settings matches 2.. if entity @s[tag=blocked_leave,nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] run function game:state/in_lobby/inventory/itemall_3
    clear @s[nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] #core:all_items{clear:1b,inventory:3b}
    execute if score blue tmp >= blue teams_max if score @s bool matches 1 if score teams settings matches 1.. if entity @s[nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] run function game:state/in_lobby/inventory/itemall_4
    clear @s[nbt=!{Inventory:[{Slot:11b,tag:{inventory:3b}}]}] #core:all_items{clear:1b,inventory:3b}
#

#yellow team
    execute if score yellow tmp < yellow teams_max if score @s bool matches 1 if score teams settings matches 3.. if entity @s[tag=!blocked_join,tag=!blocked_all,team=!r_yellow,team=!nr_yellow,nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] run function game:state/in_lobby/inventory/item4_1
    clear @s[nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] #core:all_items{clear:1b,inventory:4b}
    execute if score yellow tmp < yellow teams_max if score @s bool matches 1 if score teams tmp > teams settings unless score teams settings matches 3.. if entity @s[team=nr_yellow] run function game:state/in_lobby/inventory/item4_2
    execute if score yellow tmp < yellow teams_max if score @s bool matches 1 if score teams tmp > teams settings unless score teams settings matches 3.. if entity @s[team=r_yellow] run function game:state/in_lobby/inventory/item4_2
    execute if score @s bool matches 1 if score teams settings matches 3.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=r_yellow,nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] run function game:state/in_lobby/inventory/item4_2
    execute if score @s bool matches 1 if score teams settings matches 3.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=nr_yellow,nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] run function game:state/in_lobby/inventory/item4_2
    clear @s[nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] #core:all_items{clear:1b,inventory:4b}
    execute if score @s bool matches 1 if score teams settings matches 3.. if entity @s[tag=blocked_all,nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] run function game:state/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams settings matches 3.. if entity @s[tag=blocked_join,nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] run function game:state/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams settings matches 3.. if entity @s[tag=blocked_leave,nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] run function game:state/in_lobby/inventory/itemall_3
    clear @s[nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] #core:all_items{clear:1b,inventory:4b}
    execute if score yellow tmp >= yellow teams_max if score @s bool matches 1 if score teams settings matches 1.. if entity @s[nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] run function game:state/in_lobby/inventory/itemall_4
    clear @s[nbt=!{Inventory:[{Slot:12b,tag:{inventory:4b}}]}] #core:all_items{clear:1b,inventory:4b}
#

#dark_red team
    execute if score dark_red tmp < dark_red teams_max if score @s bool matches 1 if score teams settings matches 4.. if entity @s[tag=!blocked_join,tag=!blocked_all,team=!r_dark_red,team=!nr_dark_red,nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] run function game:state/in_lobby/inventory/item5_1
    clear @s[nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] #core:all_items{clear:1b,inventory:5b}
    execute if score dark_red tmp < dark_red teams_max if score @s bool matches 1 if score teams tmp > teams settings unless score teams settings matches 4.. if entity @s[team=r_dark_red] run function game:state/in_lobby/inventory/item5_2
    execute if score dark_red tmp < dark_red teams_max if score @s bool matches 1 if score teams tmp > teams settings unless score teams settings matches 4.. if entity @s[team=nr_dark_red] run function game:state/in_lobby/inventory/item5_2
    execute if score @s bool matches 1 if score teams settings matches 4.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=r_dark_red,nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] run function game:state/in_lobby/inventory/item5_2
    execute if score @s bool matches 1 if score teams settings matches 4.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=nr_dark_red,nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] run function game:state/in_lobby/inventory/item5_2
    clear @s[nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] #core:all_items{clear:1b,inventory:5b}
    execute if score @s bool matches 1 if score teams settings matches 4.. if entity @s[tag=blocked_all,nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] run function game:state/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams settings matches 4.. if entity @s[tag=blocked_join,nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] run function game:state/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams settings matches 4.. if entity @s[tag=blocked_leave,nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] run function game:state/in_lobby/inventory/itemall_3
    clear @s[nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] #core:all_items{clear:1b,inventory:5b}
    execute if score dark_red tmp >= dark_red teams_max if score @s bool matches 1 if score teams settings matches 1.. if entity @s[nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] run function game:state/in_lobby/inventory/itemall_4
    clear @s[nbt=!{Inventory:[{Slot:13b,tag:{inventory:5b}}]}] #core:all_items{clear:1b,inventory:5b}
#

#dark_green team
    execute if score dark_green tmp < dark_green teams_max if score @s bool matches 1 if score teams settings matches 5.. if entity @s[tag=!blocked_join,tag=!blocked_all,team=!r_dark_green,team=!nr_dark_green,nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] run function game:state/in_lobby/inventory/item6_1
    clear @s[nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] #core:all_items{clear:1b,inventory:6b}
    execute if score dark_green tmp < dark_green teams_max if score @s bool matches 1 if score teams tmp > teams settings unless score teams settings matches 5.. if entity @s[team=r_dark_green] run function game:state/in_lobby/inventory/item6_2
    execute if score dark_green tmp < dark_green teams_max if score @s bool matches 1 if score teams tmp > teams settings unless score teams settings matches 5.. if entity @s[team=nr_dark_green] run function game:state/in_lobby/inventory/item6_2
    execute if score @s bool matches 1 if score teams settings matches 5.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=r_dark_green,nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] run function game:state/in_lobby/inventory/item6_2
    execute if score @s bool matches 1 if score teams settings matches 5.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=nr_dark_green,nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] run function game:state/in_lobby/inventory/item6_2
    clear @s[nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] #core:all_items{clear:1b,inventory:6b}
    execute if score @s bool matches 1 if score teams settings matches 5.. if entity @s[tag=blocked_all,nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] run function game:state/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams settings matches 5.. if entity @s[tag=blocked_join,nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] run function game:state/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams settings matches 5.. if entity @s[tag=blocked_leave,nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] run function game:state/in_lobby/inventory/itemall_3
    clear @s[nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] #core:all_items{clear:1b,inventory:6b}
    execute if score dark_green tmp >= dark_green teams_max if score @s bool matches 1 if score teams settings matches 1.. if entity @s[nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] run function game:state/in_lobby/inventory/itemall_4
    clear @s[nbt=!{Inventory:[{Slot:14b,tag:{inventory:6b}}]}] #core:all_items{clear:1b,inventory:6b}
#

#dark_blue team
    execute if score dark_blue tmp < dark_blue teams_max if score @s bool matches 1 if score teams settings matches 6.. if entity @s[tag=!blocked_join,tag=!blocked_all,team=!r_dark_blue,team=!nr_dark_blue,nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] run function game:state/in_lobby/inventory/item7_1
    clear @s[nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] #core:all_items{clear:1b,inventory:7b}
    execute if score dark_blue tmp < dark_blue teams_max if score @s bool matches 1 if score teams tmp > teams settings unless score teams settings matches 6.. if entity @s[team=r_dark_blue] run function game:state/in_lobby/inventory/item7_2
    execute if score dark_blue tmp < dark_blue teams_max if score @s bool matches 1 if score teams tmp > teams settings unless score teams settings matches 6.. if entity @s[team=nr_dark_blue] run function game:state/in_lobby/inventory/item7_2
    execute if score @s bool matches 1 if score teams settings matches 6.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=r_dark_blue,nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] run function game:state/in_lobby/inventory/item7_2
    execute if score @s bool matches 1 if score teams settings matches 6.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=nr_dark_blue,nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] run function game:state/in_lobby/inventory/item7_2
    clear @s[nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] #core:all_items{clear:1b,inventory:7b}
    execute if score @s bool matches 1 if score teams settings matches 6.. if entity @s[tag=blocked_all,nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] run function game:state/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams settings matches 6.. if entity @s[tag=blocked_join,nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] run function game:state/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams settings matches 6.. if entity @s[tag=blocked_leave,nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] run function game:state/in_lobby/inventory/itemall_3
    clear @s[nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] #core:all_items{clear:1b,inventory:7b}
    execute if score dark_blue tmp >= dark_blue teams_max if score @s bool matches 1 if score teams settings matches 1.. if entity @s[nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] run function game:state/in_lobby/inventory/itemall_4
    clear @s[nbt=!{Inventory:[{Slot:15b,tag:{inventory:7b}}]}] #core:all_items{clear:1b,inventory:7b}
#

#gold team
    execute if score gold tmp < gold teams_max if score @s bool matches 1 if score teams settings matches 7.. if entity @s[tag=!blocked_join,tag=!blocked_all,team=!r_gold,team=!nr_gold,nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] run function game:state/in_lobby/inventory/item8_1
    clear @s[nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] #core:all_items{clear:1b,inventory:8b}
    execute if score gold tmp < gold teams_max if score @s bool matches 1 if score teams tmp > teams settings unless score teams settings matches 7.. if entity @s[team=r_gold] run function game:state/in_lobby/inventory/item8_2
    execute if score gold tmp < gold teams_max if score @s bool matches 1 if score teams tmp > teams settings unless score teams settings matches 7.. if entity @s[team=nr_gold] run function game:state/in_lobby/inventory/item8_2
    execute if score @s bool matches 1 if score teams settings matches 7.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=r_gold,nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] run function game:state/in_lobby/inventory/item8_2
    execute if score @s bool matches 1 if score teams settings matches 7.. if entity @s[tag=!blocked_leave,tag=!blocked_all,team=nr_gold,nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] run function game:state/in_lobby/inventory/item8_2
    clear @s[nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] #core:all_items{clear:1b,inventory:8b}
    execute if score @s bool matches 1 if score teams settings matches 7.. if entity @s[tag=blocked_all,nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] run function game:state/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams settings matches 7.. if entity @s[tag=blocked_join,nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] run function game:state/in_lobby/inventory/itemall_3
    execute if score @s bool matches 1 if score teams settings matches 7.. if entity @s[tag=blocked_leave,nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] run function game:state/in_lobby/inventory/itemall_3
    clear @s[nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] #core:all_items{clear:1b,inventory:8b}
    execute if score gold tmp >= gold teams_max if score @s bool matches 1 if score teams settings matches 1.. if entity @s[nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] run function game:state/in_lobby/inventory/itemall_4
    clear @s[nbt=!{Inventory:[{Slot:16b,tag:{inventory:8b}}]}] #core:all_items{clear:1b,inventory:8b}
#

scoreboard players reset @s bool
function game:state/in_lobby/inventory/items
