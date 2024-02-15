execute store result score reportId tmp run data get storage core:storage tmp[0].reportId
execute unless score reportId tmp = @s report run data remove storage core:storage tmp[0]
execute if score reportId tmp = @s report run item replace entity @s weapon.mainhand with minecraft:written_book{pages:['{"text":"4"}'],title:"123",author:"Just_Vl"}
execute if score reportId tmp = @s report run item modify entity @s weapon.mainhand core:bug_report


execute unless data storage core:storage tmp[0] run function errors:core/003/event_helper/bug_report_not_found
execute if data storage core:storage tmp[0] unless score reportId tmp = @s report run function core:event_helper/bug_reports/call/loop