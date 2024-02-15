execute unless score @s bug_reports matches 1.. store result score @s reports_timer run time query gametime
execute unless score @s bug_reports matches 1.. run scoreboard players operation @s reports_timer -= bug_reports_timer settings
execute store result score calc gametime store result score current gametime run time query gametime
scoreboard players operation calc gametime -= @s reports_timer
execute if score calc gametime > bug_reports_timer settings run scoreboard players set @s bug_reports 0
execute if score calc gametime > bug_reports_timer settings run scoreboard players reset @s reports_timer
