scoreboard players reset * tmp_id
scoreboard players set id tmp_id 1
data remove storage core:storage tmp_table

execute as @a run function short_game_name_1:triggers/menu/helper_settings/players/page1/create_table

