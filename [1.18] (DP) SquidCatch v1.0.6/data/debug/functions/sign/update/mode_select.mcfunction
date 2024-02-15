execute if score mode settings matches 0 run data modify block ~ ~ ~ Text3 set value '[{"text":"< ","color":"dark_gray"},{"text":"Одиночный","color":"black"},{"text":" >","color":"dark_gray"}]'
execute if score mode settings matches 0 run data modify block ~ ~ ~ Text4 set value '{"text":""}'
scoreboard players operation teams calc = teams settings
scoreboard players add teams calc 1

execute if score mode settings matches 1 run data modify block ~ ~ ~ Text3 set value '[{"text":"< ","color":"dark_gray"},{"text":"Командный","color":"black"},{"text":" >","color":"dark_gray"}]'
execute if score mode settings matches 1 run data modify block ~ ~ ~ Text4 set value '[{"text":"- ","color":"red"},{"text":"Кол-во: ","color":"black"},{"score":{"name":"teams","objective":"calc"},"color":"yellow"},{"text":" +","color":"green"}]'
