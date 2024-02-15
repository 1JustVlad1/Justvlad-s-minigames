#say player joined the server for the first time

tag @s add player
function lobby:join_handler/joined

gamemode adventure @s
function core:global/welcome


attribute @s minecraft:generic.max_health base set 20

scoreboard players add n id 1
scoreboard players operation @s id = n id
function core:player_profile/create

function core:global/triggers/enable