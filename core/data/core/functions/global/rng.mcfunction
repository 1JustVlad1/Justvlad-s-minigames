# tellraw @a {"text":"\n"}

# execute store result score seed rng run time query gametime
# scoreboard players operation calc rng *= seed rng
scoreboard players operation calc rng *= seed rng
scoreboard players operation calc rng *= 1103515245 const
# tellraw @a [{"text":"Шаг 1 ","color":"yellow"},{"score":{"name":"calc","objective":"rng"}}]
scoreboard players add calc rng 12345
# tellraw @a [{"text":"Шаг 2 ","color":"yellow"},{"score":{"name":"calc","objective":"rng"}}]
execute if score calc rng matches ..0 run scoreboard players operation calc rng *= -1 const
# tellraw @a [{"text":"Шаг 3 ","color":"yellow"},{"score":{"name":"calc","objective":"rng"}}]
scoreboard players operation calc rng /= 32768 const
# tellraw @a [{"text":"Шаг 4 ","color":"yellow"},{"score":{"name":"calc","objective":"rng"}}]
execute if score calc rng matches ..0 run scoreboard players set calc rng 0
# tellraw @a [{"text":"Шаг 5 ","color":"yellow"},{"score":{"name":"calc","objective":"rng"}}]
scoreboard players operation calc rng %= tmp rng
# tellraw @a [{"text":"Шаг 6 ","color":"yellow"},{"score":{"name":"calc","objective":"rng"}}]

scoreboard players add calc rng 1
scoreboard players add seed rng 1
# tellraw @a [{"text":"Шаг 7 ","color":"yellow"},{"score":{"name":"calc","objective":"rng"}}]