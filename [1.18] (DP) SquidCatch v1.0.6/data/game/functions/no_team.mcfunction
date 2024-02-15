tag @s remove ready

function control:spawnpoint
function control:tp

execute if score state game matches 0 run function game:state/in_lobby/no_team
execute if score state game matches 1 run function game:state/in_game/no_team