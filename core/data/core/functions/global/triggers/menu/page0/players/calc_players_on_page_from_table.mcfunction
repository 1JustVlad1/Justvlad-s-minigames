data remove storage core:storage tmp_table
data modify storage core:storage tmp_table set from storage core:storage player_table
scoreboard players operation calc tmp_id = cur_pg tmp_id
scoreboard players remove calc tmp_id 1
scoreboard players operation calc tmp_id *= 10 const

function core:global/triggers/menu/page0/players/players_on_page_loop

