scoreboard objectives add buried dummy
execute unless score init buried matches 1 run schedule function buried:init 2t

