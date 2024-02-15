tellraw @s [{"text":"[","color":"gray"},{"text":"Ошибка","color":"red"},{"text":"] ","color":"gray"},{"text":"Код ошибки: ","color":"white"},{"text":"003_core.bug_report_not_found ","color":"gray"}]


data modify storage core:errors core.log prepend value {Error:'{"text":"003_core.bug_report_not_found"}',timestamp:0l}
data modify storage core:errors log prepend value {Error:'{"text":"003_core.bug_report_not_found"}',timestamp:0l}
execute store result storage core:errors core.log[0].timestamp long 1 run time query gametime
execute store result storage core:errors log[0].timestamp long 1 run time query gametime