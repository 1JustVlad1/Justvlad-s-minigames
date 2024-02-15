function core:player_profile/find_by_id
execute as @a if score @s id = id_search tmp run tag @s add tmp

execute if score profile_found bool matches 1 unless data storage core:profiles tmp{notifications:{all:0l}} run tellraw @a[tag=tmp] [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"У вас есть новые уведомления!","color":"blue","italic":false}]
# execute if score profile_found bool matches 1 unless data storage core:profiles tmp{notifications:{bug_reports:0l}} run tellraw @a[tag=tmp] [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"У вас есть непроверенные отзывы!","color":"blue","italic":false}]

execute if score profile_found bool matches 1 unless data storage core:profiles tmp{notifications:{all:0l}} run playsound minecraft:entity.bat.takeoff master @a[tag=tmp] ~ ~ ~ 1000 1

tag @a remove tmp