tellraw @s [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Помощь v1.0.0.0:","color":"yellow","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Перейти в помощь"}]},"clickEvent":{"action":"run_command","value":"/trigger help"}}]

tellraw @s [{"text":" Перемещение по серверу","color":"gray"}]

tellraw @s [{"text":"   1. ","color":"gray"},{"text":"Как перемещаться?","color":"white","italic":false},{"text":" [?]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"В основном меню"},{"text":" /trigger menu ","color":"gray","italic":true},{"text":" вы сможете найти все телепортации, или просто воспользуйтесь"},{"text":" /trigger <название игры>","color":"gray","italic":true}]}}]

tellraw @s [{"text":"   2. ","color":"gray"},{"text":"Что будет, если я зайду во время идущей игры?","color":"white","italic":false},{"text":" [?]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Вас телепортирует в центр карты как наблюдателя"}]}}]

tellraw @s [{"text":"   3. ","color":"gray"},{"text":"Что будет, если я использую триггер будучи в игре?","color":"white","italic":false},{"text":" [?]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"В зависимости от режима вы станете наблюдателем и у вас:\nА. Будет возможность переподключения "},{"text":"/trigger rejoin","color":"gray","italic":true},{"text":"\nБ. Не будет возможности переподключения"}]}}]



tellraw @s [{"text":"   4. ","color":"gray"},{"text":"Как работают переподключения?","color":"white","italic":false},{"text":" [?]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Если вы покидаете режим, переходя в лобби или покинув сервер, то в зависимости от режима:\nА. В течении определённого времни "},{"text":"/trigger rejoin","color":"gray","italic":true},{"text":" вернёт вас в текущую игру. \nБ. Не будет возможности переподключиться\nВ. Условий для переподключения может не быть, вы продолжите как ни в чём не бывало"}]}}]
