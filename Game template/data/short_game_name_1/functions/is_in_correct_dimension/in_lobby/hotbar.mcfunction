scoreboard players set @s bool 1



execute if score @s bool matches 1 if entity @s[nbt=!{Inventory:[{Slot:8b,tag:{hotbar:2b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/item2
clear @s[nbt=!{Inventory:[{tag:{hotbar:2b}}]}] #core:all_items{clear:1b,hotbar:2b}
execute if score @s bool matches 1 if entity @s[nbt=!{Inventory:[{Slot:7b,tag:{hotbar:3b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/item3
clear @s[nbt=!{Inventory:[{tag:{hotbar:3b}}]}] #core:all_items{clear:1b,hotbar:3b}
execute if score @s bool matches 1 if entity @s[nbt=!{Inventory:[{Slot:6b,tag:{hotbar:4b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/item4
clear @s[nbt=!{Inventory:[{tag:{hotbar:4b}}]}] #core:all_items{clear:1b,hotbar:4b}


#ready button
    #ready mode 0
        execute if score ready_mode sgn1.settings matches 0 if score @s bool matches 1 if score teams sgn1.settings matches 0 if entity @s[tag=!sgn1.ready,nbt=!{Inventory:[{Slot:2b,tag:{hotbar:1b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/item1_1
        clear @s[nbt=!{Inventory:[{tag:{hotbar:1b}}]}] #core:all_items{clear:1b,hotbar:1b}

        execute if score ready_mode sgn1.settings matches 0 if score @s bool matches 1 if score teams sgn1.settings matches 0 if entity @s[tag=sgn1.ready,nbt=!{Inventory:[{Slot:2b,tag:{hotbar:1b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/item1_2
        clear @s[nbt=!{Inventory:[{tag:{hotbar:1b}}]}] #core:all_items{clear:1b,hotbar:1b}


        execute if score ready_mode sgn1.settings matches 0 if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[team=!lobby,tag=!sgn1.ready,nbt=!{Inventory:[{Slot:2b,tag:{hotbar:1b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/item1_1
        clear @s[nbt=!{Inventory:[{tag:{hotbar:1b}}]}] #core:all_items{clear:1b,hotbar:1b}

        execute if score ready_mode sgn1.settings matches 0 if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[team=!lobby,tag=sgn1.ready,nbt=!{Inventory:[{Slot:2b,tag:{hotbar:1b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/item1_2
        clear @s[nbt=!{Inventory:[{tag:{hotbar:1b}}]}] #core:all_items{clear:1b,hotbar:1b}

        execute if score ready_mode sgn1.settings matches 0 if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[team=lobby,nbt=!{Inventory:[{Slot:2b,tag:{hotbar:1b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/item1_3
        clear @s[nbt=!{Inventory:[{tag:{hotbar:1b}}]}] #core:all_items{clear:1b,hotbar:1b}

    #ready mode 1
        execute if score ready_mode sgn1.settings matches 1 if score @s bool matches 1 if score teams sgn1.settings matches 0 if entity @s[tag=!sgn1.ready,nbt=!{Inventory:[{Slot:2b,tag:{hotbar:1b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/item1_1
        clear @s[nbt=!{Inventory:[{tag:{hotbar:1b}}]}] #core:all_items{clear:1b,hotbar:1b}


        execute if score ready_mode sgn1.settings matches 1 if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[team=!lobby,tag=!sgn1.ready,nbt=!{Inventory:[{Slot:2b,tag:{hotbar:1b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/item1_1
        clear @s[nbt=!{Inventory:[{tag:{hotbar:1b}}]}] #core:all_items{clear:1b,hotbar:1b}

        execute if score ready_mode sgn1.settings matches 1 if score @s bool matches 1 if entity @s[tag=sgn1.ready,nbt=!{Inventory:[{Slot:2b,tag:{hotbar:1b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/item1_4
        clear @s[nbt=!{Inventory:[{tag:{hotbar:1b}}]}] #core:all_items{clear:1b,hotbar:1b}

    #ready mode 2
        execute if score ready_mode sgn1.settings matches 2 if score @s bool matches 1 if score teams sgn1.settings matches 0 if entity @s[tag=sgn1.ready,nbt=!{Inventory:[{Slot:2b,tag:{hotbar:1b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/item1_2
        clear @s[nbt=!{Inventory:[{tag:{hotbar:1b}}]}] #core:all_items{clear:1b,hotbar:1b}


        execute if score ready_mode sgn1.settings matches 2 if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[team=!lobby,tag=sgn1.ready,nbt=!{Inventory:[{Slot:2b,tag:{hotbar:1b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/item1_2
        clear @s[nbt=!{Inventory:[{tag:{hotbar:1b}}]}] #core:all_items{clear:1b,hotbar:1b}

        execute if score ready_mode sgn1.settings matches 2 if score @s bool matches 1 if entity @s[tag=!sgn1.ready,nbt=!{Inventory:[{Slot:2b,tag:{hotbar:1b}}]}] run function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/item1_4
        clear @s[nbt=!{Inventory:[{tag:{hotbar:1b}}]}] #core:all_items{clear:1b,hotbar:1b}

    #ready mode 3-4
        execute if score ready_mode sgn1.settings matches 3 if score @s bool matches 1 if score teams sgn1.settings matches 0 if entity @s[tag=!sgn1.ready] run function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/item1_1
        execute if score ready_mode sgn1.settings matches 4 if score @s bool matches 1 if score teams sgn1.settings matches 0 if entity @s[tag=sgn1.ready] run function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/item1_2
        
        execute if score ready_mode sgn1.settings matches 3..4 if score @s bool matches 1 if score teams sgn1.settings matches 1.. if entity @s[tag=sgn1.ready] run function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/item1_2


        execute if score ready_mode sgn1.settings matches 3..4 if score @s bool matches 1 if entity @s run function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/item1_4
        clear @s[nbt=!{Inventory:[{tag:{hotbar:1b}}]}] #core:all_items{clear:1b,hotbar:1b}
#


scoreboard players reset @s bool
function short_game_name_1:is_in_correct_dimension/in_lobby/hotbar/items
