data remove storage core:storage tmp
data modify storage core:storage tmp set from storage core:storage reports
execute store result score pages tmp run data get storage core:storage reports

scoreboard players operation pages tmp += 10 const
scoreboard players operation pages tmp /= 10 const
execute if score @s reports > pages tmp run scoreboard players operation @s reports = pages tmp
execute if score @s reports matches ..0 run scoreboard players set @s reports 1
execute store result score reports tmp run scoreboard players get @s reports


execute if score @s reports <= pages tmp run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Отзывы","color":"yellow","italic":false}]

execute if score @s reports <= pages tmp run tellraw @s[tag=!msg_cooldown] [{"text":" Страница ","color":"gray","italic":false},{"score":{"objective":"reports","name":"@s"}},{"text":" из "},{"score":{"objective":"tmp","name":"pages"}}]


scoreboard players remove reports tmp 1
scoreboard players operation reports tmp *= 10 const


execute if score @s reports <= pages tmp run function core:event_helper/bug_reports/call/help_page


execute if score @s reports > pages tmp run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Страница ","color":"red","italic":false},{"score":{"objective":"reports","name":"@s"},"color":"red"},{"text":" не найдена","color":"red"}]
tellraw @s[tag=!msg_cooldown] [{"text":"Автор"},{"text":" | ","color":"gray"},{"text":"Id","color":"blue"},{"text":" | ","color":"gray"},{"text":"Описание","color":"green"},{"text":" | ","color":"gray"},{"text":"Временная метка","color":"red"},{"text":" | ","color":"gray"},{"text":"Место отправки","color":"gold"}]
execute unless data storage core:storage tmp[0] run tellraw @s[tag=!msg_cooldown] [{"text":" - ","color":"gray"},{"text":"Не найдено","color":"gray","italic":false}]

execute if data storage core:storage tmp[0] if score @s reports <= pages tmp run tellraw @s[tag=!msg_cooldown] [{"text":" 1. ","color":"gray"},{"nbt":"tmp[0].author","storage":"core:storage","color":"white"},{"text":" "},{"nbt":"tmp[0].reportId","storage":"core:storage","color":"blue"},{"text":" "},{"nbt":"tmp[0].report_description","storage":"core:storage","color":"green"},{"text":" "},{"nbt":"tmp[0].timestamp","storage":"core:storage","color":"red"},{"text":" "},{"nbt":"tmp[0].dimension","storage":"core:storage","color":"gold"}]
execute if data storage core:storage tmp[1] if score @s reports <= pages tmp run tellraw @s[tag=!msg_cooldown] [{"text":" 2. ","color":"gray"},{"nbt":"tmp[1].author","storage":"core:storage","color":"white"},{"text":" "},{"nbt":"tmp[1].reportId","storage":"core:storage","color":"blue"},{"text":" "},{"nbt":"tmp[1].report_description","storage":"core:storage","color":"green"},{"text":" "},{"nbt":"tmp[1].timestamp","storage":"core:storage","color":"red"},{"text":" "},{"nbt":"tmp[1].dimension","storage":"core:storage","color":"gold"}]
execute if data storage core:storage tmp[2] if score @s reports <= pages tmp run tellraw @s[tag=!msg_cooldown] [{"text":" 3. ","color":"gray"},{"nbt":"tmp[2].author","storage":"core:storage","color":"white"},{"text":" "},{"nbt":"tmp[2].reportId","storage":"core:storage","color":"blue"},{"text":" "},{"nbt":"tmp[2].report_description","storage":"core:storage","color":"green"},{"text":" "},{"nbt":"tmp[2].timestamp","storage":"core:storage","color":"red"},{"text":" "},{"nbt":"tmp[2].dimension","storage":"core:storage","color":"gold"}]
execute if data storage core:storage tmp[3] if score @s reports <= pages tmp run tellraw @s[tag=!msg_cooldown] [{"text":" 4. ","color":"gray"},{"nbt":"tmp[3].author","storage":"core:storage","color":"white"},{"text":" "},{"nbt":"tmp[3].reportId","storage":"core:storage","color":"blue"},{"text":" "},{"nbt":"tmp[3].report_description","storage":"core:storage","color":"green"},{"text":" "},{"nbt":"tmp[3].timestamp","storage":"core:storage","color":"red"},{"text":" "},{"nbt":"tmp[3].dimension","storage":"core:storage","color":"gold"}]
execute if data storage core:storage tmp[4] if score @s reports <= pages tmp run tellraw @s[tag=!msg_cooldown] [{"text":" 5. ","color":"gray"},{"nbt":"tmp[4].author","storage":"core:storage","color":"white"},{"text":" "},{"nbt":"tmp[4].reportId","storage":"core:storage","color":"blue"},{"text":" "},{"nbt":"tmp[4].report_description","storage":"core:storage","color":"green"},{"text":" "},{"nbt":"tmp[4].timestamp","storage":"core:storage","color":"red"},{"text":" "},{"nbt":"tmp[4].dimension","storage":"core:storage","color":"gold"}]
execute if data storage core:storage tmp[5] if score @s reports <= pages tmp run tellraw @s[tag=!msg_cooldown] [{"text":" 6. ","color":"gray"},{"nbt":"tmp[5].author","storage":"core:storage","color":"white"},{"text":" "},{"nbt":"tmp[5].reportId","storage":"core:storage","color":"blue"},{"text":" "},{"nbt":"tmp[5].report_description","storage":"core:storage","color":"green"},{"text":" "},{"nbt":"tmp[5].timestamp","storage":"core:storage","color":"red"},{"text":" "},{"nbt":"tmp[5].dimension","storage":"core:storage","color":"gold"}]
execute if data storage core:storage tmp[6] if score @s reports <= pages tmp run tellraw @s[tag=!msg_cooldown] [{"text":" 7. ","color":"gray"},{"nbt":"tmp[6].author","storage":"core:storage","color":"white"},{"text":" "},{"nbt":"tmp[6].reportId","storage":"core:storage","color":"blue"},{"text":" "},{"nbt":"tmp[6].report_description","storage":"core:storage","color":"green"},{"text":" "},{"nbt":"tmp[6].timestamp","storage":"core:storage","color":"red"},{"text":" "},{"nbt":"tmp[6].dimension","storage":"core:storage","color":"gold"}]
execute if data storage core:storage tmp[7] if score @s reports <= pages tmp run tellraw @s[tag=!msg_cooldown] [{"text":" 8. ","color":"gray"},{"nbt":"tmp[7].author","storage":"core:storage","color":"white"},{"text":" "},{"nbt":"tmp[7].reportId","storage":"core:storage","color":"blue"},{"text":" "},{"nbt":"tmp[7].report_description","storage":"core:storage","color":"green"},{"text":" "},{"nbt":"tmp[7].timestamp","storage":"core:storage","color":"red"},{"text":" "},{"nbt":"tmp[7].dimension","storage":"core:storage","color":"gold"}]
execute if data storage core:storage tmp[8] if score @s reports <= pages tmp run tellraw @s[tag=!msg_cooldown] [{"text":" 9. ","color":"gray"},{"nbt":"tmp[8].author","storage":"core:storage","color":"white"},{"text":" "},{"nbt":"tmp[8].reportId","storage":"core:storage","color":"blue"},{"text":" "},{"nbt":"tmp[8].report_description","storage":"core:storage","color":"green"},{"text":" "},{"nbt":"tmp[8].timestamp","storage":"core:storage","color":"red"},{"text":" "},{"nbt":"tmp[8].dimension","storage":"core:storage","color":"gold"}]
execute if data storage core:storage tmp[9] if score @s reports <= pages tmp run tellraw @s[tag=!msg_cooldown] [{"text":" 10. ","color":"gray"},{"nbt":"tmp[9].author","storage":"core:storage","color":"white"},{"text":" "},{"nbt":"tmp[9].reportId","storage":"core:storage","color":"blue"},{"text":" "},{"nbt":"tmp[9].report_description","storage":"core:storage","color":"green"},{"text":" "},{"nbt":"tmp[9].timestamp","storage":"core:storage","color":"red"},{"text":" "},{"nbt":"tmp[9].dimension","storage":"core:storage","color":"gold"}]

scoreboard players operation id_search tmp = @s id
function core:player_profile/find_by_id
execute store result score bug_reports tmp run data get storage core:profiles tmp.notifications.bug_reports
execute store result score all_notifications tmp run data get storage core:profiles tmp.notifications.all
scoreboard players operation all_notifications tmp -= bug_reports tmp
scoreboard players operation bug_reports tmp -= bug_reports tmp
function core:player_profile/update/from_player_to_storage

tag @s add msg_cooldown
