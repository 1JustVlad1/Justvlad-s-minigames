


loot replace block 999999 100 999999 container.1 loot core:player_head
data modify storage short_game_name_1:storage teams.lore.tmp[] set from block 999999 100 999999 Items[{Slot:1b}].tag.SkullOwner.Name
execute if entity @s[tag=sgn1.ready] run data modify block 999999 99 999999 Text2 set value '[{"text":"- ","color":"gray","italic":false},{"nbt":"teams.lore.tmp","storage":"short_game_name_1:storage","interpret":true,"color":"yellow","italic":false},{"text":" ✔","color":"green"}]'
execute if entity @s[tag=!sgn1.ready] run data modify block 999999 99 999999 Text2 set value '[{"text":"- ","color":"gray","italic":false},{"nbt":"teams.lore.tmp","storage":"short_game_name_1:storage","interpret":true,"color":"gray","italic":false},{"text":" ❌","color":"red"}]'
data modify storage short_game_name_1:storage teams.lore.Text append from block 999999 99 999999 Text2