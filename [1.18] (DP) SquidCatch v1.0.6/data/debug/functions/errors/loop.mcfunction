schedule function debug:errors/loop 30s

scoreboard objectives add bool dummy

scoreboard players reset * tmp
execute store result score core_ver1 tmp run data get storage core:storage version[0]
execute store result score core_ver2 tmp run data get storage core:storage version[1]
execute store result score core_ver3 tmp run data get storage core:storage version[2]
execute store result score core_ver_required1 tmp run data get storage core:storage required_version[0]
execute store result score core_ver_required2 tmp run data get storage core:storage required_version[1]
execute store result score core_ver_required3 tmp run data get storage core:storage required_version[2]
execute if score core_ver1 tmp < core_ver_required1 tmp run scoreboard players add core_ver tmp 1
execute if score core_ver2 tmp < core_ver_required2 tmp run scoreboard players add core_ver tmp 1
execute if score core_ver3 tmp < core_ver_required3 tmp run scoreboard players add core_ver tmp 1

execute unless data storage core:storage version run scoreboard players add errors tmp 1
execute if data storage core:storage version if score core_ver tmp < core_ver_required tmp run scoreboard players add errors tmp 1
execute unless entity @e[tag=center] run scoreboard players add errors tmp 1
execute unless entity @e[tag=lobby] run scoreboard players add errors tmp 1
execute unless entity @e[tag=all] run scoreboard players add errors tmp 1
execute as @e[tag=all] if score @s map = map settings run scoreboard players set no_map tmp 1
execute if entity @e[tag=all] unless score no_map tmp matches 1.. run scoreboard players add errors tmp 1


execute if score errors tmp matches 1.. run tellraw @a [{"text":"[","color":"gray"},{"text":"Debug","color":"red"},{"text":"] ","color":"gray"},{"text":"Не найдено: ","color":"red"}]
execute unless data storage core:storage version run function debug:errors/core_not_found
execute if data storage core:storage version if score core_ver tmp matches 1.. run function debug:errors/core_outdated_version
execute unless entity @e[tag=center] run function debug:errors/center_not_found
execute unless entity @e[tag=lobby] run function debug:errors/lobby_not_found
execute unless entity @e[tag=all] run function debug:errors/spawns_not_found
execute if entity @e[tag=all] unless score no_map tmp matches 1.. run function debug:errors/map_not_found


