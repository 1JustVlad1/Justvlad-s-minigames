#Teams
    #global
        team add nocol
        team modify nocol collisionRule never

        team add lobby {"text":"Наблюдатели"}
        team modify lobby friendlyFire false
        team modify lobby color gray
#

#scoreboards
    #special
        scoreboard objectives add rejoined minecraft.custom:minecraft.leave_game
        scoreboard objectives add tsd minecraft.custom:minecraft.time_since_death
    #profile
        scoreboard objectives add xp dummy
        scoreboard objectives add level dummy
        scoreboard objectives add money dummy
    #general
        scoreboard objectives add offset dummy
        scoreboard objectives add music trigger
        scoreboard objectives add rejoin trigger
        scoreboard objectives add helper_room trigger
        scoreboard objectives add month trigger
        scoreboard objectives add reports trigger
        scoreboard objectives add report trigger
        scoreboard objectives add bug_report trigger
        scoreboard objectives add msg trigger
        scoreboard objectives add help trigger
        scoreboard objectives add menu trigger

    #global
        scoreboard objectives add id dummy
        scoreboard objectives add gametime dummy
        scoreboard objectives add const dummy
        scoreboard objectives add rejoin_timer dummy
        scoreboard objectives add reports_timer dummy
        scoreboard objectives add settings dummy
        scoreboard objectives add prev_dim dummy
        scoreboard objectives add cur_dim dummy
        scoreboard objectives add prev_game dummy
        scoreboard objectives add team dummy
        scoreboard objectives add gamemode dummy
        scoreboard objectives add bug_reports dummy
        #consts
            scoreboard players set 1103515245 const 1103515245
            scoreboard players set 32768 const 32768
            scoreboard players set 12345 const 12345
            scoreboard players set 100 const 100
            scoreboard players set 80 const 80
            scoreboard players set 60 const 60
            scoreboard players set 30 const 30
            scoreboard players set 20 const 20
            scoreboard players set 10 const 10
            scoreboard players set 6 const 6
            scoreboard players set 5 const 5
            scoreboard players set 4 const 4
            scoreboard players set 3 const 3
            scoreboard players set 2 const 2
            scoreboard players set 1 const 1
            scoreboard players set -1 const -1
        scoreboard objectives add rng dummy
        scoreboard objectives add died dummy
        scoreboard objectives add calc dummy
        scoreboard objectives add tmp dummy
        scoreboard objectives add bool dummy

#

forceload add 999999 999999
setblock 999999 99 999999 minecraft:birch_sign
setblock 999999 100 999999 shulker_box[facing=north]
setworldspawn 0 101 0


tellraw @a {"text":"[JV's event Core v2.0.0.0] Загружено"}
data modify storage core:storage current_version set value [2,0,0,0]

function core:global/loop/start


function core:global/init/check_lobby


execute unless score consts settings matches 1.. run function core:global/init/consts