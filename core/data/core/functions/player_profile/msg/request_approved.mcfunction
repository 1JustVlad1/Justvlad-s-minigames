clear @s writable_book{clear:1b}

scoreboard players operation id_search tmp = @s msg
function core:player_profile/find_by_id

item replace block 999999 100 999999 container.0 with minecraft:writable_book{clear:1b,msg:1b,addresseeId:0l,addresseeName:"",display:{"Name":''}}
data modify block 999999 99 999999 Text1 set value '[{"text":"Отправьте сообщение ","italic":false,"color":"green"},{"nbt":"tmp.name","storage":"core:profiles"}]'
data modify block 999999 100 999999 Items[0].tag.display.Name set from block 999999 99 999999 Text1
execute store result block 999999 100 999999 Items[0].tag.addresseeId long 1 run scoreboard players get @s msg
data modify block 999999 100 999999 Items[0].tag.addresseeName set from storage core:profiles tmp.name
loot give @s mine 999999 100 999999 stone




tellraw @s[tag=!msg_cooldown] [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Не будьте назойливы, это может привести к блокировке","color":"yellow","italic":false}]
tellraw @s[tag=!msg_cooldown] [{"text":" 1. ","color":"gray"},{"text":"Оглавление книги - это название сообщения ","color":"white"}]
tellraw @s[tag=!msg_cooldown] [{"text":" 2. ","color":"gray"},{"text":"Сообщение вмещает только первые 3 страницы текста","color":"white","italic":false}]
tellraw @s[tag=!msg_cooldown] [{"text":" 3. ","color":"gray"},{"text":"Сообщение считается отправленным после подписания книги","color":"white","italic":false}]
tellraw @s[tag=!msg_cooldown] [{"text":" 4. ","color":"gray"},{"text":"Если вы хотите отменить отправку, просто выкиньте книгу","color":"white","italic":false}]



