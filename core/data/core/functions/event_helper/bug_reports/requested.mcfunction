execute unless score @s bug_reports matches 0.. run scoreboard players set @s bug_reports 0
function core:event_helper/bug_reports/check_timer
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1000 2
execute if score calc gametime >= bug_reports_timer settings run scoreboard players set @s bug_reports 0

execute store result score bug_reports_timer tmp store result score bug_reports_timer calc run scoreboard players get bug_reports_timer settings
scoreboard players operation bug_reports_timer calc += @s reports_timer
scoreboard players operation bug_reports_timer calc -= current gametime

scoreboard players operation bug_reports_timer calc /= 20 const
scoreboard players operation bug_reports_timer calc /= 60 const
scoreboard players operation bug_reports_timer tmp /= 20 const
scoreboard players operation bug_reports_timer tmp /= 60 const

execute if score @s bug_reports >= bug_reports_limit settings run tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Вы достигли лимита отзывов. Пожалуйста подождите ещё ","color":"yellow","italic":false},{"score":{"objective":"calc","name":"bug_reports_timer"},"color":"gray"},{"text":" минут","color":"gray"}]

execute if score @s bug_reports < bug_reports_limit settings run function core:event_helper/bug_reports/request_approved



tag @s add msg_cooldown