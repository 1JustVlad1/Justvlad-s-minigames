data merge block ~ ~ ~  {GlowingText:1b,Color:"light_blue",Text1:'{"text":"Аквариум","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function debug:sign/check"}}',Text2:[{"text":""}],Text3:'[{"text":"< ","color":"dark_gray"},{"text":"","color":"Black"},{"text":" >","color":"dark_gray"}]'}

function debug:sign/update/map_select
execute at @e[tag=map_select] run setblock ~ ~ ~ air
kill @e[tag=map_select]
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.13 ~ ~.37 {Tags:["tool","sign","map_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.2 ~ ~.37 {Tags:["tool","sign","map_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.27 ~ ~.37 {Tags:["tool","sign","map_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.34 ~ ~.37 {Tags:["tool","sign","map_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.41 ~ ~.37 {Tags:["tool","sign","map_select","scroll_right"]}

execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~.13 ~ ~.37 {Tags:["tool","sign","map_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~.2 ~ ~.37 {Tags:["tool","sign","map_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~.27 ~ ~.37 {Tags:["tool","sign","map_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~.34 ~ ~.37 {Tags:["tool","sign","map_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~.41 ~ ~.37 {Tags:["tool","sign","map_select","scroll_left"]}


execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.13 ~ ~-.37 {Tags:["tool","sign","map_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.2 ~ ~-.37 {Tags:["tool","sign","map_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.27 ~ ~-.37 {Tags:["tool","sign","map_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.34 ~ ~-.37 {Tags:["tool","sign","map_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.41 ~ ~-.37 {Tags:["tool","sign","map_select","scroll_right"]}

execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~-.13 ~ ~-.37 {Tags:["tool","sign","map_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~-.2 ~ ~-.37 {Tags:["tool","sign","map_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~-.27 ~ ~-.37 {Tags:["tool","sign","map_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~-.34 ~ ~-.37 {Tags:["tool","sign","map_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~-.41 ~ ~-.37 {Tags:["tool","sign","map_select","scroll_left"]}


execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~ ~.13 {Tags:["tool","sign","map_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~ ~.20 {Tags:["tool","sign","map_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~ ~.27 {Tags:["tool","sign","map_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~ ~.34 {Tags:["tool","sign","map_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~ ~.41 {Tags:["tool","sign","map_select","scroll_right"]}

execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~ ~-.13 {Tags:["tool","sign","map_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~ ~-.20 {Tags:["tool","sign","map_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~ ~-.27 {Tags:["tool","sign","map_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~ ~-.34 {Tags:["tool","sign","map_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~ ~-.41 {Tags:["tool","sign","map_select","scroll_left"]}


execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~ ~-.13 {Tags:["tool","sign","map_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~ ~-.20 {Tags:["tool","sign","map_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~ ~-.27 {Tags:["tool","sign","map_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~ ~-.34 {Tags:["tool","sign","map_select","scroll_right"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~ ~-.41 {Tags:["tool","sign","map_select","scroll_right"]}

execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~ ~.13 {Tags:["tool","sign","map_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~ ~.20 {Tags:["tool","sign","map_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~ ~.27 {Tags:["tool","sign","map_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~ ~.34 {Tags:["tool","sign","map_select","scroll_left"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~ ~.41 {Tags:["tool","sign","map_select","scroll_left"]}

