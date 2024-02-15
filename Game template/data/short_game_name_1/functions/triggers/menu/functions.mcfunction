playsound minecraft:entity.villager.no master @s[tag=!event_helper] ~ ~ ~ 1000 1

execute if score @s menu matches -2000 run function short_game_name_1:triggers/menu/helper_settings/edit/open
execute if score @s[tag=event_helper] menu matches -2001 run function short_game_name_1:triggers/menu/helper_settings/edit/start
execute if score @s[tag=event_helper] menu matches -2002 run function short_game_name_1:triggers/menu/helper_settings/edit/stop
execute if score @s[tag=event_helper] menu matches -2003 run function short_game_name_1:triggers/menu/helper_settings/edit/activate
execute if score @s[tag=event_helper] menu matches -2004 run function short_game_name_1:triggers/menu/helper_settings/edit/deactivate
execute if score @s[tag=event_helper] menu matches -2005 run function short_game_name_1:triggers/menu/helper_settings/edit/white_list
execute if score @s[tag=event_helper] menu matches -2006 run function short_game_name_1:triggers/menu/helper_settings/edit/remove_teams
execute if score @s[tag=event_helper] menu matches -2007 run function short_game_name_1:triggers/menu/helper_settings/edit/add_teams
execute if score @s[tag=event_helper] menu matches -2008 run function short_game_name_1:triggers/menu/helper_settings/edit/ready_mode
execute if score @s[tag=event_helper] menu matches -2009 run function short_game_name_1:triggers/menu/helper_settings/edit/teams_mode
execute if score @s[tag=event_helper] menu matches -2010 run function short_game_name_1:triggers/menu/helper_settings/edit/clear_teams
execute if score @s[tag=event_helper] menu matches -2011 run function short_game_name_1:triggers/menu/helper_settings/edit/rnd_teams
execute if score @s[tag=event_helper] menu matches -2012 run function short_game_name_1:triggers/menu/helper_settings/edit/add_time
execute if score @s[tag=event_helper] menu matches -2013 run function short_game_name_1:triggers/menu/helper_settings/edit/remove_time

execute if score @s menu matches -2200 run function short_game_name_1:triggers/menu/helper_settings/tools/open

execute if score @s[tag=event_helper] menu matches -2201 run function short_game_name_1:triggers/menu/helper_settings/tools/spawn/lobby
execute if score @s[tag=event_helper] menu matches -2202 run function short_game_name_1:triggers/menu/helper_settings/tools/spawn/game
execute if score @s[tag=event_helper] menu matches -2203 run function short_game_name_1:triggers/menu/helper_settings/tools/spawn/red
execute if score @s[tag=event_helper] menu matches -2204 run function short_game_name_1:triggers/menu/helper_settings/tools/spawn/green
execute if score @s[tag=event_helper] menu matches -2205 run function short_game_name_1:triggers/menu/helper_settings/tools/spawn/blue
execute if score @s[tag=event_helper] menu matches -2206 run function short_game_name_1:triggers/menu/helper_settings/tools/spawn/yellow
execute if score @s[tag=event_helper] menu matches -2207 run function short_game_name_1:triggers/menu/helper_settings/tools/spawn/dark_red
execute if score @s[tag=event_helper] menu matches -2208 run function short_game_name_1:triggers/menu/helper_settings/tools/spawn/dark_green
execute if score @s[tag=event_helper] menu matches -2209 run function short_game_name_1:triggers/menu/helper_settings/tools/spawn/dark_blue
execute if score @s[tag=event_helper] menu matches -2210 run function short_game_name_1:triggers/menu/helper_settings/tools/spawn/gold

execute if score @s menu matches -2400 run function short_game_name_1:triggers/menu/helper_settings/players/page1/open

execute if score @s menu matches -2401 run function short_game_name_1:triggers/menu/helper_settings/players/page1/prev_subpage
execute if score @s menu matches -2402 run function short_game_name_1:triggers/menu/helper_settings/players/page1/next_subpage

execute if score @s menu matches -2411 run function short_game_name_1:triggers/menu/helper_settings/players/actions/open
execute if score @s[tag=event_helper] menu matches -2422 run function short_game_name_1:triggers/menu/helper_settings/players/actions/next_team
execute if score @s[tag=event_helper] menu matches -2421 run function short_game_name_1:triggers/menu/helper_settings/players/actions/prev_team
execute if score @s[tag=event_helper] menu matches -2424 run function short_game_name_1:triggers/menu/helper_settings/players/actions/ready
execute if score @s[tag=event_helper] menu matches -2423 run function short_game_name_1:triggers/menu/helper_settings/players/actions/not_ready


execute if score @s menu matches -2600 run function short_game_name_1:triggers/menu/helper_settings/players/page2/open


