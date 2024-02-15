execute if score teams settings matches 0 if score @s score >= goal settings run function control:stop
execute if score teams settings matches 1.. if score red score >= goal settings run function control:stop
execute if score teams settings matches 1.. if score green score >= goal settings run function control:stop
execute if score teams settings matches 1.. if score blue score >= goal settings run function control:stop
execute if score teams settings matches 1.. if score yellow score >= goal settings run function control:stop
execute if score teams settings matches 1.. if score dark_red score >= goal settings run function control:stop
execute if score teams settings matches 1.. if score dark_green score >= goal settings run function control:stop
execute if score teams settings matches 1.. if score dark_blue score >= goal settings run function control:stop
execute if score teams settings matches 1.. if score gold score >= goal settings run function control:stop
# execute if entity @a[team=humans] unless entity @a[team=humans,scores={health=1..}] run function control:stop