execute store success score lobby_check bool run function lobby:init/lobby

execute unless score lobby_check bool matches 1 run function errors:core/002/lobby_not_found
