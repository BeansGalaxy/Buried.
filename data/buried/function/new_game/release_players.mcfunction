execute as @e[type=#buried:avatar] run attribute @s movement_speed base reset
execute as @e[type=#buried:avatar] run attribute @s jump_strength base reset
execute as @e[type=#buried:avatar] run effect clear @s blindness

kill @e[type=!#buried:avatar,scores={buried.new_game=0..}]
scoreboard players reset @e[type=!minecraft:player] buried.new_game
