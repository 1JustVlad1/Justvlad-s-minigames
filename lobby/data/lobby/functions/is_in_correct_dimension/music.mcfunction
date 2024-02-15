stopsound @s record
scoreboard players set tmp rng 5
execute if entity @s[tag=music.lobby.off] run scoreboard players set tmp rng 0

function core:global/rng
execute if score calc rng matches 1 run playsound minecraft:music.credits record @s ~ ~100 ~ 1000 1
execute if score calc rng matches 2 run playsound minecraft:music.overworld.meadow record @a ~ ~100 ~ 1000 1
execute if score calc rng matches 3 run playsound minecraft:music.overworld.swamp record @a ~ ~100 ~ 1000 1
execute if score calc rng matches 4 run playsound minecraft:music_disc.otherside record @a ~ ~100 ~ 1000 1
execute if score calc rng matches 5 run playsound minecraft:music_disc.pigstep record @s ~ ~100 ~ 1000 1