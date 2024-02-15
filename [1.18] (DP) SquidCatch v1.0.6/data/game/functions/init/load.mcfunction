#Teams
    team add red
    team add green
    team add blue
    team add yellow
    team add dark_red
    team add dark_green
    team add dark_blue
    team add gold

    team add r_red
    team add r_green
    team add r_blue
    team add r_yellow
    team add r_dark_red
    team add r_dark_green
    team add r_dark_blue
    team add r_gold
    
    team add nr_red
    team add nr_green
    team add nr_blue
    team add nr_yellow
    team add nr_dark_red
    team add nr_dark_green
    team add nr_dark_blue
    team add nr_gold


    team modify red color red
    team modify green color green
    team modify blue color blue
    team modify yellow color yellow
    team modify dark_red color dark_red
    team modify dark_green color dark_green
    team modify dark_blue color dark_blue
    team modify gold color gold

    team modify r_red color red
    team modify r_green color green
    team modify r_blue color blue
    team modify r_yellow color yellow
    team modify r_dark_red color dark_red
    team modify r_dark_green color dark_green
    team modify r_dark_blue color dark_blue
    team modify r_gold color gold

    team modify nr_red color red
    team modify nr_green color green
    team modify nr_blue color blue
    team modify nr_yellow color yellow
    team modify nr_dark_red color dark_red
    team modify nr_dark_green color dark_green
    team modify nr_dark_blue color dark_blue
    team modify nr_gold color gold

    team modify r_red prefix {"text":"✔ ","color":"green"}
    team modify r_green prefix {"text":"✔ ","color":"green"}
    team modify r_blue prefix {"text":"✔ ","color":"green"}
    team modify r_yellow prefix {"text":"✔ ","color":"green"}
    team modify r_dark_red prefix {"text":"✔ ","color":"green"}
    team modify r_dark_green prefix {"text":"✔ ","color":"green"}
    team modify r_dark_blue prefix {"text":"✔ ","color":"green"}
    team modify r_gold prefix {"text":"✔ ","color":"green"}

    team modify nr_red prefix {"text":"❌ ","color":"red"}
    team modify nr_green prefix {"text":"❌ ","color":"red"}
    team modify nr_blue prefix {"text":"❌ ","color":"red"}
    team modify nr_yellow prefix {"text":"❌ ","color":"red"}
    team modify nr_dark_red prefix {"text":"❌ ","color":"red"}
    team modify nr_dark_green prefix {"text":"❌ ","color":"red"}
    team modify nr_dark_blue prefix {"text":"❌ ","color":"red"}
    team modify nr_gold prefix {"text":"❌ ","color":"red"}
#

#scoreboards
    #special

    #general
    scoreboard objectives add playerKills dummy
    scoreboard objectives add map dummy
    scoreboard objectives add teams_max dummy
    scoreboard objectives add score dummy
    scoreboard objectives add hits dummy
    scoreboard objectives add respawn_timer dummy

    #sidebar
    scoreboard objectives remove display
    scoreboard objectives add display dummy [{"text":"Squid","color":"aqua"},{"text":"Catch","color":"blue","bold":true}]
    scoreboard objectives setdisplay sidebar display

#

#bossbars

    bossbar remove game:top
    bossbar add game:top [{"text":""}]
    bossbar set game:top color blue

#

gamerule naturalRegeneration false 

tellraw @a [{"text":"- ","color":"gray"},{"text":"SquidCatch v1.0.5"},{"text":" Загружено","color":"green"}]
data modify storage core:storage required_version set value [1,0,1]
