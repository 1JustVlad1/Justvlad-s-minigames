tellraw @s [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Меню v1.0.0.0 ","color":"yellow","italic":false},{"text":"[!]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Оставить отзыв"}]},"clickEvent":{"action":"run_command","value":"/trigger bug_report"}}]

execute if score @s[tag=event_helper] menu matches ..-1 run function core:global/triggers/menu/page0/functions


execute if score @s[tag=!event_helper] menu matches 1..19 run function core:global/triggers/menu/page1/open
execute if score @s[tag=event_helper] menu matches 2..19 run function core:global/triggers/menu/page1/open
execute if score @s[tag=event_helper] menu matches 1 run scoreboard players set @s menu -1
execute if score @s menu matches 20..39 run function core:global/triggers/menu/page2/open
execute if score @s menu matches 40..59 run function core:global/triggers/menu/page3/open

execute if score @s menu matches ..-1 run function core:global/triggers/menu/page0/open


playsound minecraft:item.book.put master @s ~ ~ ~ 1000 2
tag @s add msg_cooldown

