

execute store result score core_ver1 tmp run data get storage core:storage current_version[0]
execute store result score core_ver2 tmp run data get storage core:storage current_version[1]
execute store result score core_ver3 tmp run data get storage core:storage current_version[2]
execute store result score core_ver4 tmp run data get storage core:storage current_version[3]

execute store result score required_core_version1 tmp run data get storage lobby:storage required_core_version[0]
execute store result score required_core_version2 tmp run data get storage lobby:storage required_core_version[1]
execute store result score required_core_version3 tmp run data get storage lobby:storage required_core_version[2]
execute store result score required_core_version4 tmp run data get storage lobby:storage required_core_version[3]

execute store result score recommended_core_version1 tmp run data get storage lobby:storage recommended_core_version[0]
execute store result score recommended_core_version2 tmp run data get storage lobby:storage recommended_core_version[1]
execute store result score recommended_core_version3 tmp run data get storage lobby:storage recommended_core_version[2]
execute store result score recommended_core_version4 tmp run data get storage lobby:storage recommended_core_version[3]

execute if score core_ver1 tmp < required_core_version1 tmp run scoreboard players set core_ver tmp 1
execute if score core_ver2 tmp < required_core_version2 tmp run scoreboard players set core_ver tmp 1
execute if score core_ver3 tmp < required_core_version3 tmp run scoreboard players set core_ver tmp 1
execute if score core_ver4 tmp < required_core_version4 tmp run scoreboard players set core_ver tmp 1

execute if score core_ver1 tmp > recommended_core_version1 tmp run scoreboard players set core_ver tmp -1
execute if score core_ver2 tmp > recommended_core_version2 tmp run scoreboard players set core_ver tmp -1
execute if score core_ver3 tmp > recommended_core_version3 tmp run scoreboard players set core_ver tmp -1
execute if score core_ver4 tmp > recommended_core_version4 tmp run scoreboard players set core_ver tmp -1


execute store success score core_check bool run function core:global/init/core


execute unless score core_check bool matches 1 run function errors:lobby/002/core_not_found
execute if score core_check bool matches 1 if score core_ver tmp matches 1 run function errors:lobby/002/core_outdated_version
execute if score core_check bool matches 1 if score core_ver tmp matches -1 run function errors:lobby/002/core_version_is_too_new
scoreboard players reset * tmp
