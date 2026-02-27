scoreboard objectives add buried dummy
execute unless score init buried matches 1.. run schedule function buried:init 2t append

execute unless score init buried matches 2 run schedule function buried:new_game/tick 4t append