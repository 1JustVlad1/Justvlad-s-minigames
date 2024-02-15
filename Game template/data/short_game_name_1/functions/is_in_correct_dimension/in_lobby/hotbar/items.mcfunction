item replace entity @s hotbar.6 with minecraft:gold_nugget{hotbar:4b,clear:1b,display:{Name:'[{"text":"Отдеальное спасибо!","color":"gold","italic":false}]',Lore:['[{"text":"Спасибо ","color":"gray","italic":false},{"text":"1exa_YT, _CatPlay_,","color":"yellow","italic":false}]','[{"text":"Brandshei и BbIJABNPOBATEJb","color":"yellow","italic":false}]','{"text":"за помощь в создании!","color":"gray","italic":false}']}}
item replace entity @s hotbar.7 with minecraft:player_head{hotbar:3b,clear:1b,SkullOwner:"It_was_goose",display:{Name:'[{"text":"Креативный организатор ","color":"white","italic":false},{"text":"It_was_goose","color":"green","italic":false}]',Lore:['{"text":"Инициатор создания режима, генерировал идеи,","color":"gray","italic":false}','{"text":"Организовывал строительный процесс","color":"gray","italic":false}']}}
item replace entity @s hotbar.8 with minecraft:player_head{hotbar:2b,clear:1b,SkullOwner:"Just_Vlad",display:{Name:'[{"text":"Главный инженер ","color":"white","italic":false},{"text":"Just_Vlad","color":"light_purple","italic":false}]',Lore:['{"text":"Занимался програмированием игры","color":"gray","italic":false}','{"text":"Отвечает за техническую часть карты","color":"gray","italic":false}']}}

#ready mode 0
execute if score teams sgn1.settings matches 0 run item replace entity @s[tag=!sgn1.ready] hotbar.2 with gray_dye{hotbar:1b,clear:1b,display:{"Name":'[{"text":"Не готов ","color":"red","italic":false},{"text":"[Q]","color":"gray","italic":true}]'}}
execute if score teams sgn1.settings matches 0 run item replace entity @s[tag=sgn1.ready] hotbar.2 with lime_dye{hotbar:1b,clear:1b,display:{"Name":'[{"text":"Готов ","color":"green","italic":false},{"text":"[Q]","color":"gray","italic":true}]'}}

execute if score teams sgn1.settings matches 1.. run item replace entity @s[team=!lobby,tag=!sgn1.ready] hotbar.2 with gray_dye{hotbar:1b,clear:1b,display:{"Name":'[{"text":"Не готов ","color":"red","italic":false},{"text":"[Q]","color":"gray","italic":true}]'}}
execute if score teams sgn1.settings matches 1.. run item replace entity @s[team=!lobby,tag=sgn1.ready] hotbar.2 with lime_dye{hotbar:1b,clear:1b,display:{"Name":'[{"text":"Готов ","color":"green","italic":false},{"text":"[Q]","color":"gray","italic":true}]'}}


#ready mode 1
execute if score ready_mode sgn1.settings matches 1 run item replace entity @s[tag=!sgn1.ready] hotbar.2 with gray_dye{hotbar:1b,clear:1b,display:{"Name":'[{"text":"Не готов ","color":"red","italic":false},{"text":"[Q]","color":"gray","italic":true}]'}}

execute if score ready_mode sgn1.settings matches 1 run item replace entity @s[team=!lobby,tag=sgn1.ready] hotbar.2 with barrier{hotbar:1b,clear:1b,display:{"Name":'[{"text":"Готов ","color":"green","italic":false},{"text":"[X]","color":"red","italic":true}]'}}

#ready mode 2
execute if score ready_mode sgn1.settings matches 2 run item replace entity @s[tag=sgn1.ready] hotbar.2 with lime_dye{hotbar:1b,clear:1b,display:{"Name":'[{"text":"Готов ","color":"green","italic":false},{"text":"[Q]","color":"gray","italic":true}]'}}

execute if score ready_mode sgn1.settings matches 2 run item replace entity @s[team=lobby,tag=!sgn1.ready] hotbar.2 with barrier{hotbar:1b,clear:1b,display:{"Name":'[{"text":"Не готов ","color":"red","italic":false},{"text":"[X]","color":"red","italic":true}]'}}


#ready mode 3
execute if score ready_mode sgn1.settings matches 3 run item replace entity @s hotbar.2 with barrier{hotbar:1b,clear:1b,display:{"Name":'[{"text":"Готов ","color":"green","italic":false},{"text":"[X]","color":"red","italic":true}]'}}
#ready mode 4
execute if score ready_mode sgn1.settings matches 4 run item replace entity @s hotbar.2 with barrier{hotbar:1b,clear:1b,display:{"Name":'[{"text":"Не готов ","color":"red","italic":false},{"text":"[X]","color":"red","italic":true}]'}}


execute if score teams sgn1.settings matches 1.. run item replace entity @s[team=lobby] hotbar.2 with barrier{hotbar:1b,clear:1b,display:{"Name":'[{"text":"Не в команде!","color":"red","italic":false}]'}}
