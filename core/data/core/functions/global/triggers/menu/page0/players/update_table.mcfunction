scoreboard players reset @a tmp_id
scoreboard players set n tmp_id 1
data remove storage core:storage player_table


execute as @a run function core:global/triggers/menu/page0/players/create_table

function core:global/triggers/menu/page0/players/calc_players_on_page_from_table

