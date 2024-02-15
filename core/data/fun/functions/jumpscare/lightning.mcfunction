
execute positioned ^ ^ ^1 run summon armor_stand ~ ~ ~ {Tags:["jumpscare","herobrine","tmp1"],Pose:{Head:[1f,0f,0f]},Marker:0b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"Herobrine_"}}],NoGravity:1b,Invisible:1b,Invulnerable:1b}
summon minecraft:lightning_bolt
scoreboard players set @e[tag=tmp1] timer 1
execute at @e[tag=tmp1] run particle minecraft:smoke ~ ~1.5 ~ 0.2 0.5 0.2 0 120 force @a
playsound minecraft:entity.ghast.hurt master @s ~ ~ ~ 1000 1
tag @e remove tmp1
# schedule function fun:tmp/lightning 9t