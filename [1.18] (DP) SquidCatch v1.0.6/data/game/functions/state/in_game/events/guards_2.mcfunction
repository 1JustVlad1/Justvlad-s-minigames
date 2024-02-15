tag @e[nbt={HurtTime:10s}] add guarded
summon turtle ~ ~ ~ {Silent:1b,NoAI:1b,Health:9999f,Tags:["squid","guards","back","tmp"],ActiveEffects:[{Id:6b,Amplifier:120b,Duration:9999999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:9999}]}
summon turtle ~ ~ ~ {Silent:1b,NoAI:1b,Health:9999f,Tags:["squid","guards","forth","tmp"],ActiveEffects:[{Id:6b,Amplifier:120b,Duration:9999999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:9999}]}

scoreboard players operation @e[tag=tmp] id = @e[nbt={HurtTime:10s},limit=1] id
tag @e remove tmp