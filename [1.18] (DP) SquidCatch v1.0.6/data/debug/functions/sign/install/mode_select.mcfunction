data merge block ~ ~ ~  {GlowingText:1b,Color:"light_blue",Text1:'{"text":"Режим","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"function debug:sign/check"}}',Text2:'{"text":""}',Text3:'[{"text":"< ","color":"dark_gray"},{"text":"","color":"Black"},{"text":" >","color":"dark_gray"}]'}



function debug:sign/update/mode_select
execute at @e[tag=mode_select] run setblock ~ ~ ~ air
kill @e[tag=mode_select]
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.23 ~-.01 ~.37 {Tags:["tool","sign","mode_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.30 ~-.01 ~.37 {Tags:["tool","sign","mode_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.37 ~-.01 ~.37 {Tags:["tool","sign","mode_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~.23 ~-.01 ~.37 {Tags:["tool","sign","mode_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~.30 ~-.01 ~.37 {Tags:["tool","sign","mode_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~.37 ~-.01 ~.37 {Tags:["tool","sign","mode_select","scroll_left"]}

execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.23 ~-.12 ~.37 {Tags:["tool","sign","mode_select","add_teams"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.30 ~-.12 ~.37 {Tags:["tool","sign","mode_select","add_teams"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.37 ~-.12 ~.37 {Tags:["tool","sign","mode_select","add_teams"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~.23 ~-.12 ~.37 {Tags:["tool","sign","mode_select","remove_teams"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~.30 ~-.12 ~.37 {Tags:["tool","sign","mode_select","remove_teams"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~.37 ~-.12 ~.37 {Tags:["tool","sign","mode_select","remove_teams"]}


execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.23 ~-.01 ~-.37 {Tags:["tool","sign","mode_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.30 ~-.01 ~-.37 {Tags:["tool","sign","mode_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.37 ~-.01 ~-.37 {Tags:["tool","sign","mode_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~-.23 ~-.01 ~-.37 {Tags:["tool","sign","mode_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~-.30 ~-.01 ~-.37 {Tags:["tool","sign","mode_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~-.37 ~-.01 ~-.37 {Tags:["tool","sign","mode_select","scroll_left"]}

execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.23 ~-.12 ~-.37 {Tags:["tool","sign","mode_select","add_teams"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.30 ~-.12 ~-.37 {Tags:["tool","sign","mode_select","add_teams"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.37 ~-.12 ~-.37 {Tags:["tool","sign","mode_select","add_teams"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~-.23 ~-.12 ~-.37 {Tags:["tool","sign","mode_select","remove_teams"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~-.30 ~-.12 ~-.37 {Tags:["tool","sign","mode_select","remove_teams"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~-.37 ~-.12 ~-.37 {Tags:["tool","sign","mode_select","remove_teams"]}


execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~-.01 ~.23 {Tags:["tool","sign","mode_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~-.01 ~.30 {Tags:["tool","sign","mode_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~-.01 ~.37 {Tags:["tool","sign","mode_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~-.01 ~-.23 {Tags:["tool","sign","mode_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~-.01 ~-.30 {Tags:["tool","sign","mode_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~-.01 ~-.37 {Tags:["tool","sign","mode_select","scroll_left"]}

execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~-.12 ~.23 {Tags:["tool","sign","mode_select","add_teams"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~-.12 ~.30 {Tags:["tool","sign","mode_select","add_teams"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~-.12 ~.37 {Tags:["tool","sign","mode_select","add_teams"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~-.12 ~-.23 {Tags:["tool","sign","mode_select","remove_teams"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~-.12 ~-.30 {Tags:["tool","sign","mode_select","remove_teams"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~-.12 ~-.37 {Tags:["tool","sign","mode_select","remove_teams"]}


execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~-.01 ~-.23 {Tags:["tool","sign","mode_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~-.01 ~-.30 {Tags:["tool","sign","mode_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~-.01 ~-.37 {Tags:["tool","sign","mode_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~-.01 ~.23 {Tags:["tool","sign","mode_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~-.01 ~.30 {Tags:["tool","sign","mode_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~-.01 ~.37 {Tags:["tool","sign","mode_select","scroll_left"]}

execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~-.12 ~-.23 {Tags:["tool","sign","mode_select","add_teams"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~-.12 ~-.30 {Tags:["tool","sign","mode_select","add_teams"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~-.12 ~-.37 {Tags:["tool","sign","mode_select","add_teams"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~-.12 ~.23 {Tags:["tool","sign","mode_select","remove_teams"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~-.12 ~.30 {Tags:["tool","sign","mode_select","remove_teams"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~-.12 ~.37 {Tags:["tool","sign","mode_select","remove_teams"]}