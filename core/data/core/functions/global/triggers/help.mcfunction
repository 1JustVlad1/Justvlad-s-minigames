

execute if score @s help matches 1 run function core:global/triggers/help/open
execute if score @s help matches 2 run function core:global/triggers/help/helpers/open
execute if score @s help matches 3 run function core:global/triggers/help/navigation
execute if score @s help matches 4 run function core:global/triggers/help/triggers/open

execute if score @s help matches 10..19 run function core:global/triggers/help/helpers
execute if score @s help matches 20..29 run function core:global/triggers/help/triggers



tag @s add msg_cooldown

