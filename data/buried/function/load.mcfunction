scoreboard objectives add buried dummy

# executes init function after server/world has started
execute unless score init buried matches 1.. run schedule function buried:init 2t append

# starts bulky processing needed for intro
execute unless score init buried matches 2 run schedule function buried:new_game/start_ticking 4t append