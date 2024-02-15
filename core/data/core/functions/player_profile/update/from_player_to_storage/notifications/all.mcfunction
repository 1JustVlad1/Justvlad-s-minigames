execute if data storage core:profiles search_tmp[] run data modify storage core:profiles tmp set from storage core:profiles search_tmp[0]

execute store result score id_search tmp run data get storage core:profiles tmp.playerId
execute store result score all_notifications tmp run data get storage core:profiles tmp.notifications.all

scoreboard players add all_notifications tmp 1
execute as @a if score @s id = id_search tmp run tag @s add tmp

function core:player_profile/update/from_player_to_storage/notifications
# function core:player_profile/update/from_storage_to_player/notifications


# tellraw @a[tag=tmp] [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"У вас есть новые уведомления!","color":"blue","italic":false}]
# execute if score profile_found bool matches 1 unless data storage core:profiles tmp{notifications:{bug_reports:0l}} run tellraw @a[tag=tmp] [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"У вас есть непроверенные отзывы!","color":"blue","italic":false}]


tag @a remove tmp

# say hi
execute if data storage core:profiles search_tmp[] run data remove storage core:profiles search_tmp[0]
execute if data storage core:profiles search_tmp[] run function core:player_profile/update/from_player_to_storage/notifications/all
