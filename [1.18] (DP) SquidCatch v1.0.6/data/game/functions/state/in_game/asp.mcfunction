execute if predicate game:looking_at_squid run attribute @s minecraft:generic.attack_damage base set 1
execute if score pvp settings matches 0 unless predicate game:looking_at_squid run attribute @s minecraft:generic.attack_damage base set -10