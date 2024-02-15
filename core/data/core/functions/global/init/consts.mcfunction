#gamerules
    gamerule keepInventory true
    gamerule doImmediateRespawn true
    gamerule doTileDrops false
    # gamerule sendCommandFeedback false
    gamerule logAdminCommands false
    gamerule doDaylightCycle false
    gamerule doWeatherCycle false
    gamerule doInsomnia false
    gamerule doPatrolSpawning false
    gamerule doTraderSpawning false
    gamerule doMobSpawning false
    gamerule doMobLoot false
    gamerule disableRaids true
    gamerule announceAdvancements false
    gamerule fireDamage false
    gamerule naturalRegeneration false
#

gamerule mobGriefing false

#scoreboards
    execute store result score seed rng run time query gametime
    scoreboard players set consts settings 1
    scoreboard players set month settings 5
    scoreboard players set bug_reports_limit settings 3
    scoreboard players set bug_reports_timer settings 48000
    
#

data modify storage core:donate links set value ["https://www.donationalerts.com/r/it_was_goose"]
data modify storage core:storage game_titles set value ["Game#1","Game#2","Game#3","Game#4","Game#5","Game#6","Game#7","Game#8","Game#9"]

data modify storage core:errors log set value []
data modify storage core:errors core.log set value []


function lobby:init/consts
function short_game_name_1:init/consts
function short_game_name_2:init/consts
function short_game_name_3:init/consts
function short_game_name_4:init/consts
function short_game_name_5:init/consts
function short_game_name_6:init/consts
function short_game_name_7:init/consts
function short_game_name_8:init/consts
function short_game_name_9:init/consts


tellraw @a [{"text":"- ","color":"gray"},{"text":"Константы"},{"text":" Загружено","color":"green"}]
