execute if score reports tmp matches 1.. run data remove storage core:storage tmp[0]
execute if score reports tmp matches 1.. run scoreboard players remove reports tmp 1

execute if score reports tmp matches 1.. run function core:event_helper/bug_reports/call/help_page