title @a subtitle ""

execute store result storage buried:temp new_game.fall int 1 run random value 1..6
execute as @n[type=#buried:avatar,tag=!buried.new_game.fell] at @s run return run function buried:new_game/intro/fall/loop_end with storage buried:temp new_game

execute as @a run attribute @s minecraft:movement_speed base reset
schedule function buried:new_game/intro/lights 30t append
schedule function buried:new_game/intro/finish 32t append