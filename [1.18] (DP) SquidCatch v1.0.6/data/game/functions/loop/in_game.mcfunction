# execute if score pvp settings matches 0 run effect give @a[gamemode=!creative] minecraft:weakness 2 255 true
effect give @a minecraft:night_vision 20 0 true
effect give @a minecraft:water_breathing 20 0 true
execute if score teams settings matches 0 as @a run scoreboard players operation @s display = @s score
execute if score teams settings matches 0 as @a run title @s actionbar [{"text":"Ваш счёт: ","color":"gray"},{"score":{"name":"@s","objective":"score"},"color":"yellow"}]