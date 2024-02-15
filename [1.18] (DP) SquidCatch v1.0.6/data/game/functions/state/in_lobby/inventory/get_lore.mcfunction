


loot replace block 999999 100 999999 container.1 loot core:player_head
data modify storage game:teams lore.tmp[] set from block 999999 100 999999 Items[{Slot:1b}].tag.SkullOwner.Name
execute if entity @s[tag=ready] run data modify block 999999 99 999999 Text2 set value '[{"text":"- ","color":"gray","italic":false},{"nbt":"lore.tmp","storage":"game:teams","interpret":true,"color":"yellow","italic":false},{"text":" ✔","color":"green"}]'
execute if entity @s[tag=!ready] run data modify block 999999 99 999999 Text2 set value '[{"text":"- ","color":"gray","italic":false},{"nbt":"lore.tmp","storage":"game:teams","interpret":true,"color":"gray","italic":false},{"text":" ❌","color":"red"}]'
data modify storage game:teams lore.Text append from block 999999 99 999999 Text2