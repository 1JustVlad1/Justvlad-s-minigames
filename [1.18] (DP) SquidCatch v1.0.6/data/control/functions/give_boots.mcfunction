item replace block 999999 100 999999 container.0 with leather_boots{HideFlags:6,Unbreakable:1b,Enchantments:[{id:"minecraft:depth_strider",lvl:0s},{id:"minecraft:binding_curse",lvl:1s}],display:{color:0},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;126859493,-214744255,-1796184194,-355802560]}]} 1
scoreboard players set calc rng 9999999
function core:rng
scoreboard players add calc rng 10000000
execute store result block 999999 100 999999 Items[0].tag.display.color long 1 run scoreboard players get calc rng


item replace entity @s armor.feet from block 999999 100 999999 container.0 game:swim_speed