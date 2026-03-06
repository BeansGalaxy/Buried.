tp @s ~ 140 ~

execute store result storage buried:temp new_game.player int 1 run scoreboard players get @s buried.new_game

execute at @s run function buried:new_game/move_entities_after_spread with storage buried:temp new_game

