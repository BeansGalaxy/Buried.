execute as @e[type=#buried:avatar] run effect clear @s blindness
execute as @n[type=#buried:avatar,x=0,y=64,z=0] at @s run function buried:new_game/intro/give_items/1
gamerule spawn_mobs true

