data modify block ~ ~ ~ Text2 set value '[{"text":"- ","color":"red"},{"text":"Св. Спруты: ","color":"black"},{"score":{"name":"maxGlowSquids","objective":"settings"},"color":"yellow"},{"text":" +","color":"green"}]'


execute if score pvp settings matches 0 run data modify block ~ ~ ~ Text3 set value '[{"text":"PvP: ","color":"black"},{"text":" Выкл","color":"red"}]'
execute if score pvp settings matches 2 run data modify block ~ ~ ~ Text3 set value '[{"text":"PvP: ","color":"black"},{"text":" Вкл","color":"green"}]'
execute if score pvp settings matches 1 run data modify block ~ ~ ~ Text3 set value '[{"text":"PvP: ","color":"black"},{"text":" Команды","color":"yellow"}]'

execute if score squid+ settings matches 0 run data modify block ~ ~ ~ Text4 set value '[{"text":"Squid","color":"black"},{"text":"+","color":"red"},{"text":": ","color":"black"},{"text":" Выкл","color":"red"}]'
execute if score squid+ settings matches 1 run data modify block ~ ~ ~ Text4 set value '[{"text":"Squid","color":"black"},{"text":"+","color":"red"},{"text":": ","color":"black"},{"text":" Вкл","color":"green"}]'
