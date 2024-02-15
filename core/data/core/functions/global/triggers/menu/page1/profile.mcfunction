tellraw @s [{"text":" ","color":"gray"},{"text":"[x]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Перейти"}]},"clickEvent":{"action":"run_command","value":"/trigger menu set 1"}},{"text":" Профиль","color":"gray"}]

scoreboard players operation id_search tmp = @s id
function core:player_profile/find_by_id

# execute

tellraw @s [{"text":" ","color":"gray"},{"text":"Имя: ","color":"blue"},{"nbt":"tmp.name","storage":"core:profiles","color":"yellow"},{"text":" ID: ","color":"blue"},{"nbt":"tmp.playerId","storage":"core:profiles","color":"yellow"}]
execute store result score level tmp run data get storage core:profiles tmp.level
tellraw @s [{"text":" ","color":"gray"},{"text":"Опыт: ","color":"blue"},{"color":"yellow","score":{"objective":"xp","name":"@s"}},{"text":" Уровень: ","color":"blue"},{"color":"yellow","score":{"objective":"tmp","name":"level"}}]

execute store result score money tmp run data get storage core:profiles tmp.money
tellraw @s [{"text":" ","color":"gray"},{"text":"Деньги: ","color":"blue"},{"color":"yellow","score":{"objective":"money","name":"@s"}}]
