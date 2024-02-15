team add sgn1.participant

#
        scoreboard objectives add bool dummy


scoreboard objectives add sgn1.settings dummy
scoreboard objectives add sgn1.game dummy
scoreboard objectives add sgn1.gametime dummy
scoreboard objectives add sgn1 trigger

data modify storage short_game_name_1:storage required_core_version set value [2,0,0,0]

forceload add 999999 999999
setblock 999999 99 999999 minecraft:birch_sign
setblock 999999 100 999999 shulker_box[facing=north]


function short_game_name_1:init/check_core
forceload add -48 -48 48 48
execute in build:short_game_name_1/main run forceload add -48 -48 48 48
execute in build:short_game_name_1/theme/winter run forceload add -48 -48 48 48


tellraw @a {"text":"- short_game_name_1 Загружено"}
