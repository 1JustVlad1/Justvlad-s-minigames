execute unless score @s bug_reports matches 1.. store result score @s reports_timer run time query gametime
scoreboard players add @s bug_reports 1

function core:event_helper/bug_reports/save_report
function core:event_helper/bug_reports/notification

tellraw @s [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Вы успешно оставили отзыв #","color":"green","italic":false},{"score":{"objective":"id","name":"reports"},"color":"green"},{"text":" Он будет рассмотрен помощником в ближайшее время.","color":"green"}]


clear @s written_book{clear:1b}



playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1000 2
