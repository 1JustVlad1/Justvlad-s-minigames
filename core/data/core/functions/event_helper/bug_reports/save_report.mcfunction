data modify storage core:storage reports prepend value {author:"",authorId:0l,timestamp:0l,report_book:{},report_description:"",reportId:0l,dimension:""}

execute store result storage core:storage reports[0].timestamp long 1 run time query gametime
execute store result storage core:storage reports[0].authorId long 1 run scoreboard players get @s id
execute store result storage core:storage reports[0].reportId long 1 run scoreboard players add reports id 1

execute if predicate lobby:lobby_check run data modify storage core:storage reports[0].dimension set value "Лобби"
execute if predicate short_game_name_1:game_1_check run data modify storage core:storage reports[0].dimension set from storage core:storage game_titles[0]
execute if predicate short_game_name_2:game_2_check run data modify storage core:storage reports[1].dimension set from storage core:storage game_titles[1]
execute if predicate short_game_name_3:game_3_check run data modify storage core:storage reports[2].dimension set from storage core:storage game_titles[2]
execute if predicate short_game_name_4:game_4_check run data modify storage core:storage reports[3].dimension set from storage core:storage game_titles[3]
execute if predicate short_game_name_5:game_5_check run data modify storage core:storage reports[4].dimension set from storage core:storage game_titles[4]
execute if predicate short_game_name_6:game_6_check run data modify storage core:storage reports[5].dimension set from storage core:storage game_titles[5]
execute if predicate short_game_name_7:game_7_check run data modify storage core:storage reports[6].dimension set from storage core:storage game_titles[6]
execute if predicate short_game_name_8:game_8_check run data modify storage core:storage reports[7].dimension set from storage core:storage game_titles[7]
execute if predicate short_game_name_9:game_9_check run data modify storage core:storage reports[8].dimension set from storage core:storage game_titles[8]


data modify storage core:storage reports[0].report_description set from entity @s SelectedItem.tag.title
data modify storage core:storage reports[0].author set from entity @s SelectedItem.tag.author
data modify storage core:storage reports[0].report_book set from entity @s SelectedItem
data remove storage core:storage reports[0].report_book.Slot
data remove storage core:storage reports[0].report_book.tag.bug_report
data remove storage core:storage reports[0].report_book.tag.display
data modify storage core:storage tmp set value ["","",""]
data modify storage core:storage tmp[0] set from storage core:storage reports[0].report_book.tag.pages[0]
data modify storage core:storage tmp[1] set from storage core:storage reports[0].report_book.tag.pages[1]
data modify storage core:storage tmp[2] set from storage core:storage reports[0].report_book.tag.pages[2]
data modify storage core:storage reports[0].report_book.tag.pages set from storage core:storage tmp


