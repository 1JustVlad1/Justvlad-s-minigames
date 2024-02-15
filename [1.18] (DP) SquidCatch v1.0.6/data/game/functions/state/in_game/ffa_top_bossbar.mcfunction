bossbar set game:top players @a
scoreboard players reset * tmp

execute store result bossbar game:top max run scoreboard players get goal settings
execute store result bossbar game:top value run scoreboard players operation maxScore tmp > @a[team=!lobby] score

execute as @a if score @s score = maxScore tmp run tag @s add leader
execute unless score @a[tag=leader,limit=1] score = lastKill tmp run bossbar set game:top name [{"text":"Лидер: ","color":"gray"},{"selector":"@a[tag=leader,limit=1]"},{"text":" "},{"score":{"name":"maxScore","objective":"tmp"},"color":"yellow"},{"text":"/","color":"white"},{"score":{"name":"goal","objective":"settings"},"color":"yellow"}]
scoreboard players operation lastKill tmp = goal settings
scoreboard players remove lastKill tmp 1
execute if score @a[tag=leader,limit=1] score = lastKill tmp run bossbar set game:top name [{"text":"Лидер: ","color":"gray"},{"selector":"@a[tag=leader,limit=1]"},{"text":" "},{"score":{"name":"maxScore","objective":"tmp"},"color":"dark_red"},{"text":"/","color":"white"},{"score":{"name":"goal","objective":"settings"},"color":"yellow"}]

tag @e remove leader