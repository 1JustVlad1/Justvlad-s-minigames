scoreboard players reset @s offset
execute if entity @e[tag=rng_squid,distance=...06] run scoreboard players add squid+ settings 1
execute if score squid+ settings matches 2.. run scoreboard players set squid+ settings 0

execute if entity @e[tag=pvp,distance=...06] run scoreboard players add pvp settings 1
execute if score pvp settings matches 3.. run scoreboard players set pvp settings 0

execute if entity @e[tag=add_squids,distance=...06] run scoreboard players add maxGlowSquids settings 1
execute if entity @e[tag=remove_squids,distance=...06] run scoreboard players remove maxGlowSquids settings 1
execute if score maxGlowSquids settings matches 6.. run scoreboard players set maxGlowSquids settings 1
execute unless score maxGlowSquids settings matches 1.. run scoreboard players set maxGlowSquids settings 5


function debug:sign/update/settings