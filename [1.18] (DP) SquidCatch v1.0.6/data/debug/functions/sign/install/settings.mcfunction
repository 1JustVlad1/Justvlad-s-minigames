data merge block ~ ~ ~  {GlowingText:1b,Color:"light_blue",Text1:'{"text":"Настройки","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function debug:sign/check"}}',Text2:[{"text":""}],Text3:'[{"text":"< ","color":"dark_gray"},{"text":"","color":"Black"},{"text":" >","color":"dark_gray"}]'}

function debug:sign/update/settings
execute at @e[tag=settings] run setblock ~ ~ ~ air
kill @e[tag=settings]
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.30 ~.1 ~.37 {Tags:["tool","sign","settings","add_squids"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.37 ~.1 ~.37 {Tags:["tool","sign","settings","add_squids"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.44 ~.1 ~.37 {Tags:["tool","sign","settings","add_squids"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~.30 ~.1 ~.37 {Tags:["tool","sign","settings","remove_squids"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~.37 ~.1 ~.37 {Tags:["tool","sign","settings","remove_squids"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~.44 ~.1 ~.37 {Tags:["tool","sign","settings","remove_squids"]}

execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.02 ~-.01 ~.37 {Tags:["tool","sign","settings","pvp"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.09 ~-.01 ~.37 {Tags:["tool","sign","settings","pvp"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.16 ~-.01 ~.37 {Tags:["tool","sign","settings","pvp"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.23 ~-.01 ~.37 {Tags:["tool","sign","settings","pvp"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.30 ~-.01 ~.37 {Tags:["tool","sign","settings","pvp"]}

execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.16 ~-.12 ~.37 {Tags:["tool","sign","settings","rng_squid"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.23 ~-.12 ~.37 {Tags:["tool","sign","settings","rng_squid"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run summon marker ~-.30 ~-.12 ~.37 {Tags:["tool","sign","settings","rng_squid"]}



execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.30 ~.1 ~-.37 {Tags:["tool","sign","settings","add_squids"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.37 ~.1 ~-.37 {Tags:["tool","sign","settings","add_squids"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.44 ~.1 ~-.37 {Tags:["tool","sign","settings","add_squids"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~-.30 ~.1 ~-.37 {Tags:["tool","sign","settings","remove_squids"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~-.37 ~.1 ~-.37 {Tags:["tool","sign","settings","remove_squids"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~-.44 ~.1 ~-.37 {Tags:["tool","sign","settings","remove_squids"]}

execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.02 ~-.01 ~-.37 {Tags:["tool","sign","settings","pvp"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.09 ~-.01 ~-.37 {Tags:["tool","sign","settings","pvp"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.16 ~-.01 ~-.37 {Tags:["tool","sign","settings","pvp"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.23 ~-.01 ~-.37 {Tags:["tool","sign","settings","pvp"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.30 ~-.01 ~-.37 {Tags:["tool","sign","settings","pvp"]}

execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.16 ~-.12 ~-.37 {Tags:["tool","sign","settings","rng_squid"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.23 ~-.12 ~-.37 {Tags:["tool","sign","settings","rng_squid"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run summon marker ~.30 ~-.12 ~-.37 {Tags:["tool","sign","settings","rng_squid"]}


execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~.1 ~.30 {Tags:["tool","sign","settings","add_squids"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~.1 ~.37 {Tags:["tool","sign","settings","add_squids"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~.1 ~.44 {Tags:["tool","sign","settings","add_squids"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~.1 ~-.30 {Tags:["tool","sign","settings","remove_squids"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~.1 ~-.37 {Tags:["tool","sign","settings","remove_squids"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~.1 ~-.44 {Tags:["tool","sign","settings","remove_squids"]}

execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~-.01 ~.02 {Tags:["tool","sign","settings","pvp"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~-.01 ~.09 {Tags:["tool","sign","settings","pvp"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~-.01 ~.16 {Tags:["tool","sign","settings","pvp"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~-.01 ~.23 {Tags:["tool","sign","settings","pvp"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~-.01 ~.30 {Tags:["tool","sign","settings","pvp"]}

execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~-.12 ~.16 {Tags:["tool","sign","settings","rng_squid"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~-.12 ~.23 {Tags:["tool","sign","settings","rng_squid"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run summon marker ~.37 ~-.12 ~.30 {Tags:["tool","sign","settings","rng_squid"]}


execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~.1 ~-.30 {Tags:["tool","sign","settings","add_squids"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~.1 ~-.37 {Tags:["tool","sign","settings","add_squids"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~.1 ~-.44 {Tags:["tool","sign","settings","add_squids"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~.1 ~.30 {Tags:["tool","sign","settings","remove_squids"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~.1 ~.37 {Tags:["tool","sign","settings","remove_squids"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~.1 ~.44 {Tags:["tool","sign","settings","remove_squids"]}

execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~-.01 ~-.02 {Tags:["tool","sign","settings","pvp"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~-.01 ~-.09 {Tags:["tool","sign","settings","pvp"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~-.01 ~-.16 {Tags:["tool","sign","settings","pvp"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~-.01 ~-.23 {Tags:["tool","sign","settings","pvp"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~-.01 ~-.30 {Tags:["tool","sign","settings","pvp"]}

execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~-.12 ~-.16 {Tags:["tool","sign","settings","rng_squid"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~-.12 ~-.23 {Tags:["tool","sign","settings","rng_squid"]}
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run summon marker ~-.37 ~-.12 ~-.30 {Tags:["tool","sign","settings","rng_squid"]}