data modify storage core:storage messages prepend value {author:"",authorId:0l,timestamp:0l,msg_book:{},msg_description:"",msgId:0l,dimension:"",addresseeId:0l}

execute store result storage core:storage messages[0].timestamp long 1 run time query gametime
execute store result storage core:storage messages[0].authorId long 1 run scoreboard players get @s id
execute store result storage core:storage messages[0].msgId long 1 run scoreboard players add msgs id 1
execute store result storage core:storage messages[0].addresseeId long 1 run data get entity @s Inventory[{id:"minecraft:written_book",tag:{msg:1b}}].tag.addresseeId

execute if predicate lobby:lobby_check run data modify storage core:storage messages[0].dimension set value "Лобби"
execute if predicate short_game_name_1:game_1_check run data modify storage core:storage messages[0].dimension set from storage core:storage game_titles[0]


data modify storage core:storage messages[0].msg_description set from entity @s SelectedItem.tag.title
data modify storage core:storage messages[0].author set from entity @s SelectedItem.tag.author
data modify storage core:storage messages[0].msg_book set from entity @s SelectedItem
data remove storage core:storage messages[0].msg_book.Slot
data remove storage core:storage messages[0].msg_book.tag.msg
data remove storage core:storage messages[0].msg_book.tag.display
data modify storage core:storage tmp set value ["","",""]
data modify storage core:storage tmp[0] set from storage core:storage messages[0].msg_book.tag.pages[0]
data modify storage core:storage tmp[1] set from storage core:storage messages[0].msg_book.tag.pages[1]
data modify storage core:storage tmp[2] set from storage core:storage messages[0].msg_book.tag.pages[2]
data modify storage core:storage messages[0].msg_book.tag.pages set from storage core:storage tmp

execute store result score id_search tmp run data get entity @s Inventory[{id:"minecraft:written_book",tag:{msg:1b}}].tag.addresseeId
function core:player_profile/find_by_id
data modify storage core:profiles storage[0].messages.unread prepend from storage core:storage messages[0]
data modify storage core:profiles storage[0].messages.all prepend from storage core:storage messages[0]

