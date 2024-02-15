execute if score @s music matches 1 run tag @s add music.lobby.off
execute if score @s music matches 1 run function lobby:music
execute if score @s music matches 1 run scoreboard players set @s music 2
execute if score @s music matches 3 run tag @s remove music.lobby.off
execute if score @s music matches 3 run function lobby:music
execute if score @s music matches 3.. run scoreboard players reset @s music
execute if score @s music matches ..-1 run scoreboard players reset @s music

