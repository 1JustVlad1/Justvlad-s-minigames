function game:state/in_lobby/inventory/clear
#Teams
    #Red
        data remove storage game:teams lore
        data remove storage game:teams name
        # execute store result score players tmp if entity @a[team=r_red]
        # execute store result score players calc if entity @a[team=nr_red]
        execute as @a[team=r_red] run function game:state/in_lobby/inventory/get_lore
        execute as @a[team=nr_red] run function game:state/in_lobby/inventory/get_lore
        execute if score teams settings matches 1.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=!r_red] inventory.0 with red_concrete_powder{inventory:1b,clear:1b,display:{"Name":'[{"text":"Красные","color":"red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 1.. run item replace entity @s[tag=!blocked_all,tag=!blocked_leave,team=r_red] inventory.0 with red_concrete_powder{inventory:1b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Красные","color":"red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 1.. run item replace entity @s[tag=!blocked_all,tag=!blocked_leave,team=nr_red] inventory.0 with red_concrete_powder{inventory:1b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Красные","color":"red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 1.. run item replace entity @s[tag=blocked_all] inventory.0 with barrier{inventory:1b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Красные","color":"red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 1.. run item replace entity @s[tag=blocked_join] inventory.0 with barrier{inventory:1b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Красные","color":"red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 1.. run item replace entity @s[tag=blocked_leave] inventory.0 with barrier{inventory:1b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Красные","color":"red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score red tmp >= red teams_max if score teams settings matches 1.. run item replace entity @s inventory.0 with barrier{inventory:1b,clear:1b,display:{"Name":'[{"text":"Красные","color":"red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        data modify storage game:teams name.Text append from entity @s Inventory[{Slot:9b}].tag.display.Name
        execute if score red teams_max matches 1.. run data modify storage game:teams name.Text append value '[{"score":{"name":"red","objective":"tmp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"red","objective":"teams_max"},"color":"yellow"}]'
        function game:state/in_lobby/inventory/set_name
        item modify entity @s inventory.0 game:teams_lore
        item modify entity @s inventory.0 game:teams_name
    #
    #Green
        data remove storage game:teams lore
        data remove storage game:teams name
        execute as @a[team=r_green] run function game:state/in_lobby/inventory/get_lore
        execute as @a[team=nr_green] run function game:state/in_lobby/inventory/get_lore
        execute if score teams settings matches 1.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=!r_green] inventory.1 with green_concrete_powder{inventory:2b,clear:1b,display:{"Name":'[{"text":"Зелёные","color":"green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 1.. run item replace entity @s[tag=!blocked_all,tag=!blocked_leave,team=r_green] inventory.1 with green_concrete_powder{inventory:2b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Зелёные","color":"green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 1.. run item replace entity @s[tag=!blocked_all,tag=!blocked_leave,team=nr_green] inventory.1 with green_concrete_powder{inventory:2b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Зелёные","color":"green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 1.. run item replace entity @s[tag=blocked_all] inventory.1 with barrier{inventory:2b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Зелёные","color":"green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 1.. run item replace entity @s[tag=blocked_join] inventory.1 with barrier{inventory:2b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Зелёные","color":"green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 1.. run item replace entity @s[tag=blocked_leave] inventory.1 with barrier{inventory:2b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Зелёные","color":"green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score green tmp >= green teams_max if score teams settings matches 1.. run item replace entity @s inventory.1 with barrier{inventory:2b,clear:1b,display:{"Name":'[{"text":"Зелёные","color":"green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        data modify storage game:teams name.Text append from entity @s Inventory[{Slot:10b}].tag.display.Name
        execute if score green teams_max matches 1.. run data modify storage game:teams name.Text append value '[{"score":{"name":"green","objective":"tmp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"green","objective":"teams_max"},"color":"yellow"}]'
        function game:state/in_lobby/inventory/set_name
        item modify entity @s inventory.1 game:teams_lore
        item modify entity @s inventory.1 game:teams_name
    #
    #blue
        data remove storage game:teams lore
        data remove storage game:teams name
        execute as @a[team=r_blue] run function game:state/in_lobby/inventory/get_lore
        execute as @a[team=nr_blue] run function game:state/in_lobby/inventory/get_lore
        execute if score teams settings matches 2.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=!r_blue] inventory.2 with blue_concrete_powder{inventory:3b,clear:1b,display:{"Name":'[{"text":"Синие","color":"blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 2.. run item replace entity @s[tag=!blocked_all,tag=!blocked_leave,team=r_blue] inventory.2 with blue_concrete_powder{inventory:3b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Синие","color":"blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 2.. run item replace entity @s[tag=!blocked_all,tag=!blocked_leave,team=nr_blue] inventory.2 with blue_concrete_powder{inventory:3b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Синие","color":"blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 2.. run item replace entity @s[tag=blocked_all] inventory.2 with barrier{inventory:3b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Синие","color":"blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 2.. run item replace entity @s[tag=blocked_join] inventory.2 with barrier{inventory:3b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Синие","color":"blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 2.. run item replace entity @s[tag=blocked_leave] inventory.2 with barrier{inventory:3b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Синие","color":"blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score blue tmp >= blue teams_max if score teams settings matches 2.. run item replace entity @s inventory.2 with barrier{inventory:3b,clear:1b,display:{"Name":'[{"text":"Синие","color":"blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        data modify storage game:teams name.Text append from entity @s Inventory[{Slot:11b}].tag.display.Name
        execute if score blue teams_max matches 1.. run data modify storage game:teams name.Text append value '[{"score":{"name":"blue","objective":"tmp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"blue","objective":"teams_max"},"color":"yellow"}]'
        function game:state/in_lobby/inventory/set_name
        item modify entity @s inventory.2 game:teams_lore
        item modify entity @s inventory.2 game:teams_name
    #
    #yellow
        data remove storage game:teams lore
        data remove storage game:teams name
        execute as @a[team=r_yellow] run function game:state/in_lobby/inventory/get_lore
        execute as @a[team=nr_yellow] run function game:state/in_lobby/inventory/get_lore
        execute if score teams settings matches 3.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=!r_yellow] inventory.3 with yellow_concrete_powder{inventory:4b,clear:1b,display:{"Name":'[{"text":"Жёлтые","color":"yellow","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 3.. run item replace entity @s[tag=!blocked_all,tag=!blocked_leave,team=r_yellow] inventory.3 with yellow_concrete_powder{inventory:4b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Жёлтые","color":"yellow","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 3.. run item replace entity @s[tag=!blocked_all,tag=!blocked_leave,team=nr_yellow] inventory.3 with yellow_concrete_powder{inventory:4b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Жёлтые","color":"yellow","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 3.. run item replace entity @s[tag=blocked_all] inventory.3 with barrier{inventory:4b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Жёлтые","color":"yellow","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 3.. run item replace entity @s[tag=blocked_join] inventory.3 with barrier{inventory:4b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Жёлтые","color":"yellow","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 3.. run item replace entity @s[tag=blocked_leave] inventory.3 with barrier{inventory:4b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Жёлтые","color":"yellow","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score yellow tmp >= yellow teams_max if score teams settings matches 3.. run item replace entity @s inventory.3 with barrier{inventory:4b,clear:1b,display:{"Name":'[{"text":"Жёлтые","color":"yellow","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        data modify storage game:teams name.Text append from entity @s Inventory[{Slot:12b}].tag.display.Name
        execute if score yellow teams_max matches 1.. run data modify storage game:teams name.Text append value '[{"score":{"name":"yellow","objective":"tmp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"yellow","objective":"teams_max"},"color":"yellow"}]'
        function game:state/in_lobby/inventory/set_name
        item modify entity @s inventory.3 game:teams_lore
        item modify entity @s inventory.3 game:teams_name
    #
    #dark_red
        data remove storage game:teams lore
        data remove storage game:teams name
        execute as @a[team=r_dark_red] run function game:state/in_lobby/inventory/get_lore
        execute as @a[team=nr_dark_red] run function game:state/in_lobby/inventory/get_lore
        execute if score teams settings matches 4.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=!r_dark_red] inventory.4 with red_concrete{inventory:5b,clear:1b,display:{"Name":'[{"text":"Тёмно-красные","color":"dark_red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 4.. run item replace entity @s[tag=!blocked_all,tag=!blocked_leave,team=r_dark_red] inventory.4 with red_concrete{inventory:5b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-красные","color":"dark_red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 4.. run item replace entity @s[tag=!blocked_all,tag=!blocked_leave,team=nr_dark_red] inventory.4 with red_concrete{inventory:5b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-красные","color":"dark_red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 4.. run item replace entity @s[tag=blocked_all] inventory.4 with barrier{inventory:5b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-красные","color":"dark_red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 4.. run item replace entity @s[tag=blocked_join] inventory.4 with barrier{inventory:5b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-красные","color":"dark_red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 4.. run item replace entity @s[tag=blocked_leave] inventory.4 with barrier{inventory:5b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-красные","color":"dark_red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score dark_red tmp >= dark_red teams_max if score teams settings matches 4.. run item replace entity @s inventory.4 with barrier{inventory:5b,clear:1b,display:{"Name":'[{"text":"Тёмно-красные","color":"dark_red","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        data modify storage game:teams name.Text append from entity @s Inventory[{Slot:13b}].tag.display.Name
        execute if score dark_red teams_max matches 1.. run data modify storage game:teams name.Text append value '[{"score":{"name":"dark_red","objective":"tmp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"dark_red","objective":"teams_max"},"color":"yellow"}]'
        function game:state/in_lobby/inventory/set_name
        item modify entity @s inventory.4 game:teams_lore
        item modify entity @s inventory.4 game:teams_name
    #
    #dark_green
        data remove storage game:teams lore
        data remove storage game:teams name
        execute as @a[team=r_dark_green] run function game:state/in_lobby/inventory/get_lore
        execute as @a[team=nr_dark_green] run function game:state/in_lobby/inventory/get_lore
        execute if score teams settings matches 5.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=!r_dark_green] inventory.5 with green_concrete{inventory:6b,clear:1b,display:{"Name":'[{"text":"Тёмно-зелёные","color":"dark_green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 5.. run item replace entity @s[tag=!blocked_all,tag=!blocked_leave,team=r_dark_green] inventory.5 with green_concrete{inventory:6b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-зелёные","color":"dark_green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 5.. run item replace entity @s[tag=!blocked_all,tag=!blocked_leave,team=nr_dark_green] inventory.5 with green_concrete{inventory:6b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-зелёные","color":"dark_green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 5.. run item replace entity @s[tag=blocked_all] inventory.5 with barrier{inventory:6b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-зелёные","color":"dark_green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 5.. run item replace entity @s[tag=blocked_join] inventory.5 with barrier{inventory:6b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-зелёные","color":"dark_green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 5.. run item replace entity @s[tag=blocked_leave] inventory.5 with barrier{inventory:6b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-зелёные","color":"dark_green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score dark_green tmp >= dark_green teams_max if score teams settings matches 5.. run item replace entity @s inventory.5 with barrier{inventory:6b,clear:1b,display:{"Name":'[{"text":"Тёмно-зелёные","color":"dark_green","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        data modify storage game:teams name.Text append from entity @s Inventory[{Slot:14b}].tag.display.Name
        execute if score dark_green teams_max matches 1.. run data modify storage game:teams name.Text append value '[{"score":{"name":"dark_green","objective":"tmp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"dark_green","objective":"teams_max"},"color":"yellow"}]'
        function game:state/in_lobby/inventory/set_name
        item modify entity @s inventory.5 game:teams_lore
        item modify entity @s inventory.5 game:teams_name
    #
    #dark_blue
        data remove storage game:teams lore
        data remove storage game:teams name
        execute as @a[team=r_dark_blue] run function game:state/in_lobby/inventory/get_lore
        execute as @a[team=nr_dark_blue] run function game:state/in_lobby/inventory/get_lore
        execute if score teams settings matches 6.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=!r_dark_blue] inventory.6 with blue_concrete{inventory:7b,clear:1b,display:{"Name":'[{"text":"Тёмно-синие","color":"dark_blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 6.. run item replace entity @s[tag=!blocked_all,tag=!blocked_leave,team=r_dark_blue] inventory.6 with blue_concrete{inventory:7b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-синие","color":"dark_blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 6.. run item replace entity @s[tag=!blocked_all,tag=!blocked_leave,team=nr_dark_blue] inventory.6 with blue_concrete{inventory:7b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-синие","color":"dark_blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 6.. run item replace entity @s[tag=blocked_all] inventory.6 with barrier{inventory:7b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-синие","color":"dark_blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 6.. run item replace entity @s[tag=blocked_join] inventory.6 with barrier{inventory:7b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-синие","color":"dark_blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 6.. run item replace entity @s[tag=blocked_leave] inventory.6 with barrier{inventory:7b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-синие","color":"dark_blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score dark_blue tmp >= dark_blue teams_max if score teams settings matches 6.. run item replace entity @s inventory.6 with barrier{inventory:7b,clear:1b,display:{"Name":'[{"text":"Тёмно-синие","color":"dark_blue","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        data modify storage game:teams name.Text append from entity @s Inventory[{Slot:15b}].tag.display.Name
        execute if score dark_blue teams_max matches 1.. run data modify storage game:teams name.Text append value '[{"score":{"name":"dark_blue","objective":"tmp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"dark_blue","objective":"teams_max"},"color":"yellow"}]'
        function game:state/in_lobby/inventory/set_name
        item modify entity @s inventory.6 game:teams_lore
        item modify entity @s inventory.6 game:teams_name
    #
    #gold
        data remove storage game:teams lore
        data remove storage game:teams name
        execute as @a[team=r_gold] run function game:state/in_lobby/inventory/get_lore
        execute as @a[team=nr_gold] run function game:state/in_lobby/inventory/get_lore
        execute if score teams settings matches 7.. run item replace entity @s[tag=!blocked_all,tag=!blocked_join,team=!r_gold] inventory.7 with yellow_concrete{inventory:8b,clear:1b,display:{"Name":'[{"text":"Тёмно-жёлтые","color":"gold","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 7.. run item replace entity @s[tag=!blocked_all,tag=!blocked_leave,team=r_gold] inventory.7 with yellow_concrete{inventory:8b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-жёлтые","color":"gold","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 7.. run item replace entity @s[tag=!blocked_all,tag=!blocked_leave,team=nr_gold] inventory.7 with yellow_concrete{inventory:8b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-жёлтые","color":"gold","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 7.. run item replace entity @s[tag=blocked_all] inventory.7 with barrier{inventory:8b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-жёлтые","color":"gold","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 7.. run item replace entity @s[tag=blocked_join] inventory.7 with barrier{inventory:8b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-жёлтые","color":"gold","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score teams settings matches 7.. run item replace entity @s[tag=blocked_leave] inventory.7 with barrier{inventory:8b,clear:1b,Enchantments:[{}],display:{"Name":'[{"text":"Тёмно-жёлтые","color":"gold","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        execute if score gold tmp >= gold teams_max if score teams settings matches 7.. run item replace entity @s inventory.7 with barrier{inventory:8b,clear:1b,display:{"Name":'[{"text":"Тёмно-жёлтые","color":"gold","italic":false},{"text":" [Q]","color":"gray","italic":true}]'}}
        data modify storage game:teams name.Text append from entity @s Inventory[{Slot:16b}].tag.display.Name
        execute if score gold teams_max matches 1.. run data modify storage game:teams name.Text append value '[{"score":{"name":"gold","objective":"tmp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"gold","objective":"teams_max"},"color":"yellow"}]'
        function game:state/in_lobby/inventory/set_name
        item modify entity @s inventory.7 game:teams_lore
        item modify entity @s inventory.7 game:teams_name
    #