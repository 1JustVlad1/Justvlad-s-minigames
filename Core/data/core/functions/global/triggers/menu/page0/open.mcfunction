tellraw @s [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Меню v1.0.0.0:","color":"yellow","italic":false}]
tellraw @s [{"text":"  "},{"text":"Игра","color":"gray","underlined":true},{"text":"   "},{"text":"Игрок","color":"gray","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set 2"}},{"text":"  "},{"text":"Почта","color":"gray","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set 20"}},{"text":"  "},{"text":"Друзья","color":"gray","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set 40"}}]
# tellraw @s[tag=event_helper] [{"text":"  - ","color":"gray"},{"text":"Для помощников","color":"white","italic":false},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger help set 2"}}]

tellraw @s {"text":"                                               ","strikethrough":true,"color":"dark_gray","italic":true}

execute if score @s menu matches -1 run function core:global/triggers/menu/page0/header
execute if score @s menu matches -2 run function core:global/triggers/menu/page0/subpage0/game_1/open
execute if score @s menu matches -3 run function core:global/triggers/menu/page0/subpage0/game_2/open
execute if score @s menu matches -4 run function core:global/triggers/menu/page0/subpage0/game_3/open
execute if score @s menu matches -5 run function core:global/triggers/menu/page0/subpage0/game_4/open
execute if score @s menu matches -6 run function core:global/triggers/menu/page0/subpage0/game_5/open
execute if score @s menu matches -7 run function core:global/triggers/menu/page0/subpage0/game_6/open
execute if score @s menu matches -8 run function core:global/triggers/menu/page0/subpage0/game_7/open
execute if score @s menu matches -9 run function core:global/triggers/menu/page0/subpage0/game_8/open
execute if score @s menu matches -10 run function core:global/triggers/menu/page0/subpage0/game_9/open
execute if score @s menu matches -11 run function core:global/triggers/menu/page0/subpage0/lobby/open
execute if score @s menu matches -1000 run function core:global/triggers/menu/page0/subpage0/lobby/edit
execute if score @s menu matches -2000 run function core:global/triggers/menu/page0/subpage0/game_1/edit
execute if score @s menu matches -3000 run function core:global/triggers/menu/page0/subpage0/game_2/edit
execute if score @s menu matches -4000 run function core:global/triggers/menu/page0/subpage0/game_3/edit
execute if score @s menu matches -5000 run function core:global/triggers/menu/page0/subpage0/game_4/edit
execute if score @s menu matches -6000 run function core:global/triggers/menu/page0/subpage0/game_5/edit
execute if score @s menu matches -7000 run function core:global/triggers/menu/page0/subpage0/game_6/edit
execute if score @s menu matches -8000 run function core:global/triggers/menu/page0/subpage0/game_7/edit
execute if score @s menu matches -9000 run function core:global/triggers/menu/page0/subpage0/game_8/edit
execute if score @s menu matches -10000 run function core:global/triggers/menu/page0/subpage0/game_9/edit
# execute if score @s menu matches 3 run function core:global/triggers/menu/page1/profile


tellraw @s {"text":"\n\n"}

# tellraw @s [{"text":"   Стр.","color":"gray"},{"text":" [ < ] ","color":"gray"},{"text":"1 из 3","color":"gray"},{"text":" [ > ]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set 2"}}]
