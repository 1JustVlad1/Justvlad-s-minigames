
data modify storage lobby:storage recommended_core_version set value [0,0,0,0]

execute store result storage lobby:storage recommended_core_version[0] int 1 run data get storage core:storage current_version[0] 1
execute store result storage lobby:storage recommended_core_version[1] int 1 run data get storage core:storage current_version[1] 1
execute store result storage lobby:storage recommended_core_version[2] int 1 run data get storage core:storage current_version[2] 1
execute store result storage lobby:storage recommended_core_version[3] int 1 run data get storage core:storage current_version[3] 1
