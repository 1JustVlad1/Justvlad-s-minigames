

function core:player_profile/msg/save
function core:player_profile/msg/notification


tellraw @s [{"text":"[","color":"gray"},{"text":"Jv's minigames","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Сообщение успешно отправлено игроку ","color":"green","italic":false},{"nbt":"Inventory[{id:\"minecraft:written_book\",tag:{msg:1b}}].tag.addresseeName","entity":"@s"}]


scoreboard players operation id_search tmp = @s id
function core:player_profile/find_by_id
data modify storage core:profiles storage[0].messages.sent_out prepend from storage core:storage messages[0]



clear @s written_book{clear:1b}



playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 1000 2
