function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/clear
#Teams
    #Red
        data remove storage short_game_name_1:storage teams.lore
        data remove storage short_game_name_1:storage teams.name
        # execute store result score players tmp if entity @a[team=sgn1.r_red]
        # execute store result score players calc if entity @a[team=sgn1.nr_red]
        execute as @a[team=sgn1.r_red] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/get_lore
        execute as @a[team=sgn1.nr_red] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/get_lore
        execute if score teams sgn1.settings matches 1.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=!sgn1.r_red] inventory.0 with red_concrete_powder{inventory:1b,clear:1b,display:{"Name":'[{"text":"Красные","color":"red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 1.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=sgn1.r_red] inventory.0 with red_concrete_powder{inventory:1b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Красные","color":"red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 1.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=sgn1.nr_red] inventory.0 with red_concrete_powder{inventory:1b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Красные","color":"red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 1.. run item replace entity @s[tag=blocked_leave,team=!lobby] inventory.0 with red_concrete_powder{inventory:1b,clear:1b,display:{"Name":'[{"text":"Красные","color":"red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 1.. run item replace entity @s[tag=!blocked_all,tag=blocked_leave,team=sgn1.r_red] inventory.0 with barrier{inventory:1b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Красные","color":"red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 1.. run item replace entity @s[tag=!blocked_all,tag=blocked_leave,team=sgn1.nr_red] inventory.0 with barrier{inventory:1b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Красные","color":"red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 1.. run item replace entity @s[tag=blocked_all] inventory.0 with barrier{inventory:1b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Красные","color":"red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 1.. run item replace entity @s[tag=blocked_join,team=!lobby] inventory.0 with red_concrete_powder{inventory:1b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Красные","color":"red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 1.. run item replace entity @s[tag=blocked_join,team=!sgn1.r_red,team=!sgn1.nr_red] inventory.0 with barrier{inventory:1b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Красные","color":"red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score red tmp >= max.red sgn1.settings if score teams sgn1.settings matches 1.. run item replace entity @s inventory.0 with barrier{inventory:1b,clear:1b,display:{"Name":'[{"text":"Красные","color":"red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        data modify storage short_game_name_1:storage teams.name.Text append from entity @s Inventory[{Slot:9b}].tag.display.Name
        execute if score max.red sgn1.settings matches 1.. run data modify storage short_game_name_1:storage teams.name.Text append value '[{"score":{"name":"red","objective":"tmp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"max.red","objective":"sgn1.settings"},"color":"yellow"}]'
        function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/set_name
        item modify entity @s inventory.0 short_game_name_1:teams_lore
        item modify entity @s inventory.0 short_game_name_1:teams_name
    #
    #Green
        data remove storage short_game_name_1:storage teams.lore
        data remove storage short_game_name_1:storage teams.name
        execute as @a[team=sgn1.r_green] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/get_lore
        execute as @a[team=sgn1.nr_green] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/get_lore
        execute if score teams sgn1.settings matches 1.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=!sgn1.r_green] inventory.1 with green_concrete_powder{inventory:2b,clear:1b,display:{"Name":'[{"text":"Зелёные","color":"green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 1.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=sgn1.r_green] inventory.1 with green_concrete_powder{inventory:2b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Зелёные","color":"green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 1.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=sgn1.nr_green] inventory.1 with green_concrete_powder{inventory:2b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Зелёные","color":"green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 1.. run item replace entity @s[tag=blocked_leave,team=!lobby] inventory.1 with green_concrete_powder{inventory:2b,clear:1b,display:{"Name":'[{"text":"Зелёные","color":"green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 1.. run item replace entity @s[tag=!blocked_all,tag=blocked_leave,team=sgn1.r_green] inventory.1 with barrier{inventory:2b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Зелёные","color":"green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 1.. run item replace entity @s[tag=!blocked_all,tag=blocked_leave,team=sgn1.nr_green] inventory.1 with barrier{inventory:2b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Зелёные","color":"green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 1.. run item replace entity @s[tag=blocked_all] inventory.1 with barrier{inventory:2b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Зелёные","color":"green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 1.. run item replace entity @s[tag=blocked_join,team=!lobby] inventory.1 with green_concrete_powder{inventory:2b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Зелёные","color":"green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 1.. run item replace entity @s[tag=blocked_join,team=!sgn1.r_green,team=!sgn1.nr_green] inventory.1 with barrier{inventory:2b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Зелёные","color":"green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score green tmp >= max.green sgn1.settings if score teams sgn1.settings matches 1.. run item replace entity @s inventory.1 with barrier{inventory:2b,clear:1b,display:{"Name":'[{"text":"Зелёные","color":"green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        data modify storage short_game_name_1:storage teams.name.Text append from entity @s Inventory[{Slot:10b}].tag.display.Name
        execute if score max.green sgn1.settings matches 1.. run data modify storage short_game_name_1:storage teams.name.Text append value '[{"score":{"name":"green","objective":"tmp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"max.green","objective":"sgn1.settings"},"color":"yellow"}]'
        function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/set_name
        item modify entity @s inventory.1 short_game_name_1:teams_lore
        item modify entity @s inventory.1 short_game_name_1:teams_name
    #
    #blue
        data remove storage short_game_name_1:storage teams.lore
        data remove storage short_game_name_1:storage teams.name
        execute as @a[team=sgn1.r_blue] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/get_lore
        execute as @a[team=sgn1.nr_blue] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/get_lore
        execute if score teams sgn1.settings matches 2.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=!sgn1.r_blue] inventory.2 with blue_concrete_powder{inventory:3b,clear:1b,display:{"Name":'[{"text":"Синие","color":"blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 2.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=sgn1.r_blue] inventory.2 with blue_concrete_powder{inventory:3b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Синие","color":"blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 2.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=sgn1.nr_blue] inventory.2 with blue_concrete_powder{inventory:3b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Синие","color":"blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 2.. run item replace entity @s[tag=blocked_leave,team=!lobby] inventory.2 with blue_concrete_powder{inventory:3b,display:{"Name":'[{"text":"Синие","color":"blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 2.. run item replace entity @s[tag=!blocked_all,tag=blocked_leave,team=sgn1.r_blue] inventory.2 with barrier{inventory:3b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Синие","color":"blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 2.. run item replace entity @s[tag=!blocked_all,tag=blocked_leave,team=sgn1.nr_blue] inventory.2 with barrier{inventory:3b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Синие","color":"blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 2.. run item replace entity @s[tag=blocked_all] inventory.2 with barrier{inventory:3b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Синие","color":"blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 2.. run item replace entity @s[tag=blocked_join,team=!lobby] inventory.2 with blue_concrete_powder{inventory:3b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Синие","color":"blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 2.. run item replace entity @s[tag=blocked_join,team=!sgn1.r_blue,team=!sgn1.nr_blue] inventory.2 with barrier{inventory:3b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Синие","color":"blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score blue tmp >= max.blue sgn1.settings if score teams sgn1.settings matches 2.. run item replace entity @s inventory.2 with barrier{inventory:3b,clear:1b,display:{"Name":'[{"text":"Синие","color":"blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        data modify storage short_game_name_1:storage teams.name.Text append from entity @s Inventory[{Slot:11b}].tag.display.Name
        execute if score max.blue sgn1.settings matches 1.. run data modify storage short_game_name_1:storage teams.name.Text append value '[{"score":{"name":"blue","objective":"tmp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"max.blue","objective":"sgn1.settings"},"color":"yellow"}]'
        function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/set_name
        item modify entity @s inventory.2 short_game_name_1:teams_lore
        item modify entity @s inventory.2 short_game_name_1:teams_name
    #
    #yellow
        data remove storage short_game_name_1:storage teams.lore
        data remove storage short_game_name_1:storage teams.name
        execute as @a[team=sgn1.r_yellow] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/get_lore
        execute as @a[team=sgn1.nr_yellow] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/get_lore
        execute if score teams sgn1.settings matches 3.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=!sgn1.r_yellow] inventory.3 with yellow_concrete_powder{inventory:4b,clear:1b,display:{"Name":'[{"text":"Жёлтые","color":"yellow","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 3.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=sgn1.r_yellow] inventory.3 with yellow_concrete_powder{inventory:4b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Жёлтые","color":"yellow","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 3.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=sgn1.nr_yellow] inventory.3 with yellow_concrete_powder{inventory:4b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Жёлтые","color":"yellow","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 3.. run item replace entity @s[tag=blocked_leave,team=!lobby] inventory.3 with yellow_concrete_powder{inventory:4b,clear:1b,display:{"Name":'[{"text":"Жёлтые","color":"yellow","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 3.. run item replace entity @s[tag=!blocked_all,tag=blocked_leave,team=sgn1.r_yellow] inventory.3 with barrier{inventory:4b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Жёлтые","color":"yellow","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 3.. run item replace entity @s[tag=!blocked_all,tag=blocked_leave,team=sgn1.nr_yellow] inventory.3 with barrier{inventory:4b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Жёлтые","color":"yellow","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 3.. run item replace entity @s[tag=blocked_all] inventory.3 with barrier{inventory:4b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Жёлтые","color":"yellow","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 3.. run item replace entity @s[tag=blocked_join,team=!lobby] inventory.3 with yellow_concrete_powder{inventory:4b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Жёлтые","color":"yellow","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 3.. run item replace entity @s[tag=blocked_join,team=!sgn1.r_yellow,team=!sgn1.nr_yellow] inventory.3 with barrier{inventory:4b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Жёлтые","color":"yellow","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score yellow tmp >= max.yellow sgn1.settings if score teams sgn1.settings matches 3.. run item replace entity @s inventory.3 with barrier{inventory:4b,clear:1b,display:{"Name":'[{"text":"Жёлтые","color":"yellow","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        data modify storage short_game_name_1:storage teams.name.Text append from entity @s Inventory[{Slot:12b}].tag.display.Name
        execute if score max.yellow sgn1.settings matches 1.. run data modify storage short_game_name_1:storage teams.name.Text append value '[{"score":{"name":"yellow","objective":"tmp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"max.yellow","objective":"sgn1.settings"},"color":"yellow"}]'
        function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/set_name
        item modify entity @s inventory.3 short_game_name_1:teams_lore
        item modify entity @s inventory.3 short_game_name_1:teams_name
    #
    #dark_red
        data remove storage short_game_name_1:storage teams.lore
        data remove storage short_game_name_1:storage teams.name
        execute as @a[team=sgn1.r_dark_red] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/get_lore
        execute as @a[team=sgn1.nr_dark_red] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/get_lore
        execute if score teams sgn1.settings matches 4.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=!sgn1.r_dark_red] inventory.4 with red_concrete{inventory:5b,clear:1b,display:{"Name":'[{"text":"Тёмно-красные","color":"dark_red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 4.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=sgn1.r_dark_red] inventory.4 with red_concrete{inventory:5b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-красные","color":"dark_red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 4.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=sgn1.nr_dark_red] inventory.4 with red_concrete{inventory:5b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-красные","color":"dark_red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 4.. run item replace entity @s[tag=blocked_leave,team=!lobby] inventory.4 with red_concrete{inventory:5b,clear:1b,display:{"Name":'[{"text":"Тёмно-красные","color":"dark_red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 4.. run item replace entity @s[tag=!blocked_all,tag=blocked_leave,team=sgn1.r_dark_red] inventory.4 with barrier{inventory:5b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-красные","color":"dark_red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 4.. run item replace entity @s[tag=!blocked_all,tag=blocked_leave,team=sgn1.nr_dark_red] inventory.4 with barrier{inventory:5b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-красные","color":"dark_red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 4.. run item replace entity @s[tag=blocked_all] inventory.4 with barrier{inventory:5b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-красные","color":"dark_red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 4.. run item replace entity @s[tag=blocked_join,team=!lobby] inventory.4 with red_concrete{inventory:5b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-красные","color":"dark_red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 4.. run item replace entity @s[tag=blocked_join,team=!sgn1.r_dark_red,team=!sgn1.nr_dark_red] inventory.4 with barrier{inventory:5b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-красные","color":"dark_red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score dark_red tmp >= max.dark_red sgn1.settings if score teams sgn1.settings matches 4.. run item replace entity @s inventory.4 with barrier{inventory:5b,clear:1b,display:{"Name":'[{"text":"Тёмно-красные","color":"dark_red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        data modify storage short_game_name_1:storage teams.name.Text append from entity @s Inventory[{Slot:13b}].tag.display.Name
        execute if score max.dark_red sgn1.settings matches 1.. run data modify storage short_game_name_1:storage teams.name.Text append value '[{"score":{"name":"dark_red","objective":"tmp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"max.dark_red","objective":"sgn1.settings"},"color":"yellow"}]'
        function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/set_name
        item modify entity @s inventory.4 short_game_name_1:teams_lore
        item modify entity @s inventory.4 short_game_name_1:teams_name
    #
    #dark_green
        data remove storage short_game_name_1:storage teams.lore
        data remove storage short_game_name_1:storage teams.name
        execute as @a[team=sgn1.r_dark_green] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/get_lore
        execute as @a[team=sgn1.nr_dark_green] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/get_lore
        execute if score teams sgn1.settings matches 5.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=!sgn1.r_dark_green] inventory.5 with green_concrete{inventory:6b,clear:1b,display:{"Name":'[{"text":"Тёмно-зелёные","color":"dark_green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 5.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=sgn1.r_dark_green] inventory.5 with green_concrete{inventory:6b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-зелёные","color":"dark_green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 5.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=sgn1.nr_dark_green] inventory.5 with green_concrete{inventory:6b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-зелёные","color":"dark_green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 5.. run item replace entity @s[tag=blocked_leave,team=!lobby] inventory.5 with green_concrete{inventory:6b,clear:1b,display:{"Name":'[{"text":"Тёмно-зелёные","color":"dark_green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 5.. run item replace entity @s[tag=!blocked_all,tag=blocked_leave,team=sgn1.r_dark_green] inventory.5 with barrier{inventory:6b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-зелёные","color":"dark_green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 5.. run item replace entity @s[tag=!blocked_all,tag=blocked_leave,team=sgn1.nr_dark_green] inventory.5 with barrier{inventory:6b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-зелёные","color":"dark_green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 5.. run item replace entity @s[tag=blocked_all] inventory.5 with barrier{inventory:6b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-зелёные","color":"dark_green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 5.. run item replace entity @s[tag=blocked_join,team=!lobby] inventory.5 with green_concrete{inventory:6b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-зелёные","color":"dark_green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 5.. run item replace entity @s[tag=blocked_join,team=!sgn1.r_dark_green,team=!sgn1.nr_dark_green] inventory.5 with barrier{inventory:6b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-зелёные","color":"dark_green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score dark_green tmp >= max.dark_green sgn1.settings if score teams sgn1.settings matches 5.. run item replace entity @s inventory.5 with barrier{inventory:6b,clear:1b,display:{"Name":'[{"text":"Тёмно-зелёные","color":"dark_green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        data modify storage short_game_name_1:storage teams.name.Text append from entity @s Inventory[{Slot:14b}].tag.display.Name
        execute if score max.dark_green sgn1.settings matches 1.. run data modify storage short_game_name_1:storage teams.name.Text append value '[{"score":{"name":"dark_green","objective":"tmp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"max.dark_green","objective":"sgn1.settings"},"color":"yellow"}]'
        function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/set_name
        item modify entity @s inventory.5 short_game_name_1:teams_lore
        item modify entity @s inventory.5 short_game_name_1:teams_name
    #
    #dark_blue
        data remove storage short_game_name_1:storage teams.lore
        data remove storage short_game_name_1:storage teams.name
        execute as @a[team=sgn1.r_dark_blue] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/get_lore
        execute as @a[team=sgn1.nr_dark_blue] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/get_lore
        execute if score teams sgn1.settings matches 6.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=!sgn1.r_dark_blue] inventory.6 with blue_concrete{inventory:7b,clear:1b,display:{"Name":'[{"text":"Тёмно-синие","color":"dark_blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 6.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=sgn1.r_dark_blue] inventory.6 with blue_concrete{inventory:7b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-синие","color":"dark_blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 6.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=sgn1.nr_dark_blue] inventory.6 with blue_concrete{inventory:7b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-синие","color":"dark_blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 6.. run item replace entity @s[tag=blocked_leave,team=!lobby] inventory.6 with blue_concrete{inventory:7b,clear:1b,display:{"Name":'[{"text":"Тёмно-синие","color":"dark_blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 6.. run item replace entity @s[tag=!blocked_all,tag=blocked_leave,team=sgn1.r_dark_blue] inventory.6 with barrier{inventory:7b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-синие","color":"dark_blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 6.. run item replace entity @s[tag=!blocked_all,tag=blocked_leave,team=sgn1.nr_dark_blue] inventory.6 with barrier{inventory:7b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-синие","color":"dark_blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 6.. run item replace entity @s[tag=blocked_all] inventory.6 with barrier{inventory:7b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-синие","color":"dark_blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 6.. run item replace entity @s[tag=blocked_join,team=!lobby] inventory.6 with blue_concrete{inventory:7b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-синие","color":"dark_blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 6.. run item replace entity @s[tag=blocked_join,team=!sgn1.r_dark_blue,team=!sgn1.nr_dark_blue] inventory.6 with barrier{inventory:7b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-синие","color":"dark_blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score dark_blue tmp >= max.dark_blue sgn1.settings if score teams sgn1.settings matches 6.. run item replace entity @s inventory.6 with barrier{inventory:7b,clear:1b,display:{"Name":'[{"text":"Тёмно-синие","color":"dark_blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        data modify storage short_game_name_1:storage teams.name.Text append from entity @s Inventory[{Slot:15b}].tag.display.Name
        execute if score max.dark_blue sgn1.settings matches 1.. run data modify storage short_game_name_1:storage teams.name.Text append value '[{"score":{"name":"dark_blue","objective":"tmp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"max.dark_blue","objective":"sgn1.settings"},"color":"yellow"}]'
        function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/set_name
        item modify entity @s inventory.6 short_game_name_1:teams_lore
        item modify entity @s inventory.6 short_game_name_1:teams_name
    #
    #gold
        data remove storage short_game_name_1:storage teams.lore
        data remove storage short_game_name_1:storage teams.name
        execute as @a[team=sgn1.r_gold] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/get_lore
        execute as @a[team=sgn1.nr_gold] run function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/get_lore
        execute if score teams sgn1.settings matches 7.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=!sgn1.r_gold] inventory.7 with yellow_concrete{inventory:8b,clear:1b,display:{"Name":'[{"text":"Тёмно-жёлтые","color":"gold","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 7.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=sgn1.r_gold] inventory.7 with yellow_concrete{inventory:8b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-жёлтые","color":"gold","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 7.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=sgn1.nr_gold] inventory.7 with yellow_concrete{inventory:8b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-жёлтые","color":"gold","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 7.. run item replace entity @s[tag=blocked_leave,team=!lobby] inventory.7 with yellow_concrete{inventory:8b,clear:1b,display:{"Name":'[{"text":"Тёмно-жёлтые","color":"gold","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 7.. run item replace entity @s[tag=blocked_leave,team=sgn1.r_gold] inventory.7 with barrier{inventory:8b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-жёлтые","color":"gold","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 7.. run item replace entity @s[tag=blocked_leave,team=sgn1.nr_gold] inventory.7 with barrier{inventory:8b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-жёлтые","color":"gold","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 7.. run item replace entity @s[tag=blocked_all] inventory.7 with barrier{inventory:8b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-жёлтые","color":"gold","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 7.. run item replace entity @s[tag=blocked_join,team=!lobby] inventory.7 with yellow_concrete{inventory:8b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-жёлтые","color":"gold","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams sgn1.settings matches 7.. run item replace entity @s[tag=blocked_join,team=!sgn1.r_gold,team=!sgn1.nr_gold] inventory.7 with barrier{inventory:8b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-жёлтые","color":"gold","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score gold tmp >= max.gold sgn1.settings if score teams sgn1.settings matches 7.. run item replace entity @s inventory.7 with barrier{inventory:8b,clear:1b,display:{"Name":'[{"text":"Тёмно-жёлтые","color":"gold","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        data modify storage short_game_name_1:storage teams.name.Text append from entity @s Inventory[{Slot:16b}].tag.display.Name
        execute if score max.gold sgn1.settings matches 1.. run data modify storage short_game_name_1:storage teams.name.Text append value '[{"score":{"name":"gold","objective":"tmp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"max.gold","objective":"sgn1.settings"},"color":"yellow"}]'
        function short_game_name_1:is_in_correct_dimension/in_lobby/inventory/set_name
        item modify entity @s inventory.7 short_game_name_1:teams_lore
        item modify entity @s inventory.7 short_game_name_1:teams_name
    #