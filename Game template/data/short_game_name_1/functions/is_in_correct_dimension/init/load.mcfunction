#Teams
    team add sgn1.red
    team add sgn1.green
    team add sgn1.blue
    team add sgn1.yellow
    team add sgn1.dark_red
    team add sgn1.dark_green
    team add sgn1.dark_blue
    team add sgn1.gold

    team add sgn1.r_red
    team add sgn1.r_green
    team add sgn1.r_blue
    team add sgn1.r_yellow
    team add sgn1.r_dark_red
    team add sgn1.r_dark_green
    team add sgn1.r_dark_blue
    team add sgn1.r_gold
    
    team add sgn1.nr_red
    team add sgn1.nr_green
    team add sgn1.nr_blue
    team add sgn1.nr_yellow
    team add sgn1.nr_dark_red
    team add sgn1.nr_dark_green
    team add sgn1.nr_dark_blue
    team add sgn1.nr_gold


    team modify sgn1.red color red
    team modify sgn1.green color green
    team modify sgn1.blue color blue
    team modify sgn1.yellow color yellow
    team modify sgn1.dark_red color dark_red
    team modify sgn1.dark_green color dark_green
    team modify sgn1.dark_blue color dark_blue
    team modify sgn1.gold color gold

    team modify sgn1.r_red color red
    team modify sgn1.r_green color green
    team modify sgn1.r_blue color blue
    team modify sgn1.r_yellow color yellow
    team modify sgn1.r_dark_red color dark_red
    team modify sgn1.r_dark_green color dark_green
    team modify sgn1.r_dark_blue color dark_blue
    team modify sgn1.r_gold color gold

    team modify sgn1.nr_red color red
    team modify sgn1.nr_green color green
    team modify sgn1.nr_blue color blue
    team modify sgn1.nr_yellow color yellow
    team modify sgn1.nr_dark_red color dark_red
    team modify sgn1.nr_dark_green color dark_green
    team modify sgn1.nr_dark_blue color dark_blue
    team modify sgn1.nr_gold color gold

    team modify sgn1.r_red prefix {"text":"✔ ","color":"green"}
    team modify sgn1.r_green prefix {"text":"✔ ","color":"green"}
    team modify sgn1.r_blue prefix {"text":"✔ ","color":"green"}
    team modify sgn1.r_yellow prefix {"text":"✔ ","color":"green"}
    team modify sgn1.r_dark_red prefix {"text":"✔ ","color":"green"}
    team modify sgn1.r_dark_green prefix {"text":"✔ ","color":"green"}
    team modify sgn1.r_dark_blue prefix {"text":"✔ ","color":"green"}
    team modify sgn1.r_gold prefix {"text":"✔ ","color":"green"}

    team modify sgn1.nr_red prefix {"text":"❌ ","color":"red"}
    team modify sgn1.nr_green prefix {"text":"❌ ","color":"red"}
    team modify sgn1.nr_blue prefix {"text":"❌ ","color":"red"}
    team modify sgn1.nr_yellow prefix {"text":"❌ ","color":"red"}
    team modify sgn1.nr_dark_red prefix {"text":"❌ ","color":"red"}
    team modify sgn1.nr_dark_green prefix {"text":"❌ ","color":"red"}
    team modify sgn1.nr_dark_blue prefix {"text":"❌ ","color":"red"}
    team modify sgn1.nr_gold prefix {"text":"❌ ","color":"red"}
#

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
