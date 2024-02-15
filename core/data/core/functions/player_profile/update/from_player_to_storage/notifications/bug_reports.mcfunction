execute if data storage core:profiles search_tmp[] run data modify storage core:profiles tmp set from storage core:profiles search_tmp[0]

execute if data storage core:profiles search_tmp[] store result score id_search tmp run data get storage core:profiles tmp.playerId
execute if data storage core:profiles search_tmp[] store result score bug_reports tmp run data get storage core:profiles tmp.notifications.bug_reports

execute unless data storage core:profiles search_tmp[] run scoreboard players reset id_search tmp 

scoreboard players add bug_reports tmp 1

function core:player_profile/update/from_player_to_storage/notifications
# function core:player_profile/update/from_storage_to_player/notifications
execute as @a if score @s id = id_search tmp run tag @s add tmp

# execute if score profile_found bool matches 1 unless data storage core:profiles tmp{notifications:{all:0l}} run tellraw @a[tag=tmp] [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"У вас есть новые уведомления!","color":"blue","italic":false}]
tellraw @a[tag=tmp] [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Новый отзыв!","color":"blue","italic":false}]

execute unless data storage core:profiles tmp{notifications:{bug_reports:0l}} run playsound minecraft:entity.bat.takeoff master @a[tag=tmp] ~ ~ ~ 1000 1
tag @a remove tmp
# say hi
execute if data storage core:profiles search_tmp[] run data remove storage core:profiles search_tmp[0]
execute if data storage core:profiles search_tmp[] run function core:player_profile/update/from_player_to_storage/notifications/bug_reports
