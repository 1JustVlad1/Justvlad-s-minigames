execute if score calc tmp_id matches 1.. run data remove storage core:storage tmp_table[0]
scoreboard players remove calc tmp_id 1
execute if score calc tmp_id matches 1.. run function core:global/triggers/menu/page0/players/players_on_page_loop

