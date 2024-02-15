tellraw @s [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Меню v1.0.0.0:","color":"yellow","italic":false}]
tellraw @s[tag=!event_helper] [{"text":"   "},{"text":"Игрок","color":"gray","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set 1"}},{"text":"  "},{"text":"Почта","color":"gray","underlined":true},{"text":"  "},{"text":"Друзья","color":"gray","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set 40"}}]

tellraw @s[tag=event_helper] [{"text":"   "},{"text":"Игра","color":"gray","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set -1"}},{"text":"  "},{"text":"Игрок","color":"gray","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set 1"}},{"text":"  "},{"text":"Почта","color":"gray","underlined":true},{"text":"  "},{"text":"Друзья","color":"gray","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set 40"}}]
# tellraw @s[tag=event_helper] [{"text":"  - ","color":"gray"},{"text":"Для помощников","color":"white","italic":false},{"text":" [>]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger help set 2"}}]

tellraw @s {"text":"                                               ","strikethrough":true,"color":"dark_gray","italic":true}

tellraw @s [{"text":" ","color":"gray"},{"text":"[В разработке]","color":"green"}]

tellraw @s {"text":"\n\n"}

# tellraw @s [{"text":"   Стр.","color":"gray"},{"text":" [ < ] ","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set 1"}},{"text":"2 из 3","color":"gray"},{"text":" [ > ]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set 3"}}]
