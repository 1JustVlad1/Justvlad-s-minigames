execute if score @s helper_room matches -2147483648..2147483647 unless score @s helper_room matches 0 run function core:event_helper/settings_room
execute if score @s month matches -2147483648..2147483647 unless score @s month matches 0 run function core:event_helper/month
execute if score @s report matches -2147483648..2147483647 unless score @s report matches 0 run function core:event_helper/bug_reports/call/give
execute if score @s reports matches -2147483648..2147483647 unless score @s reports matches 0 run function core:event_helper/bug_reports/call/help

