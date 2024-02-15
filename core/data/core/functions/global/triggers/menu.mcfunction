

execute if score @s[tag=event_helper] menu matches ..-1 run function core:global/triggers/menu/page0/open
execute if score @s menu matches 1..19 run function core:global/triggers/menu/page1/open
execute if score @s menu matches 20..39 run function core:global/triggers/menu/page2/open
execute if score @s menu matches 40..59 run function core:global/triggers/menu/page3/open


playsound minecraft:ui.button.click master @s ~ ~ ~ 1000 2
tag @s add msg_cooldown

