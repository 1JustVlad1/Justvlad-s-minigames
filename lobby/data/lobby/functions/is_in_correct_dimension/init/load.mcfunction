        scoreboard objectives add bool dummy



#scoreboards
    #special
        scoreboard objectives add lobby trigger
    #global

    #local
        scoreboard objectives add l.game dummy
        scoreboard objectives add l.settings dummy
        scoreboard objectives add l.timer dummy
        #sidebar
            scoreboard objectives remove display
            scoreboard objectives add l.display dummy {"text":""}
            scoreboard objectives setdisplay sidebar display
#

#

#bossbars
    #lobby
        bossbar remove lobby:timer
        bossbar add lobby:timer [{"text":""}]
        bossbar set lobby:timer color yellow

#

data modify storage lobby:storage required_core_version set value [2,0,0,0]

function lobby:init/check_core

scoreboard players set check_lobby bool 1

forceload add 999999 999999
setblock 999999 99 999999 minecraft:birch_sign
setblock 999999 100 999999 shulker_box[facing=north]


forceload add -48 -48 48 48
execute in build:lobby/main run forceload add -48 -48 48 48
execute in build:lobby/theme/winter run forceload add -48 -48 48 48


tellraw @a {"text":"- Лобби загружено"}
