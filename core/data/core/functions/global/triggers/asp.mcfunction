
execute unless score @s rejoin_timer matches 1.. unless score @s rejoin matches 0 run tellraw @s [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Вам некуда переподключаться!","color":"red","italic":false}]

execute if score @s rejoin_timer matches 1.. unless score @s rejoin matches 0 run function core:global/join_handler/rejoin

execute if entity @s[tag=event_helper] run function core:global/triggers/event_helper

function core:global/triggers/join

execute unless score @s music matches 0 run function core:global/triggers/music/tmp

execute unless score @s bug_report matches 0 run function core:event_helper/bug_reports/requested

execute unless score @s msg matches 0 run function core:player_profile/msg/check_if_blocked

execute unless score @s[tag=!msg_cooldwon] help matches 0 run function core:global/triggers/help
execute unless score @s menu matches 0 run function core:global/triggers/menu





function core:global/triggers/disable
function core:global/triggers/enable
