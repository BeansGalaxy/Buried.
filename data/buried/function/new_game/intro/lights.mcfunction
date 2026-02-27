execute as @e[type=#buried:avatar] at @s run tp @s ~ 64 ~
execute as @n[type=#buried:avatar,x=0,y=64,z=0] at @s run tp @s ~ ~ ~ 137.1 49.6
execute as @e[type=#buried:avatar] at @s run fill ~ ~2 ~ ~ 126 ~ air

item replace entity @e[type=#buried:avatar] hotbar.0 with air
item replace entity @e[type=#buried:avatar] hotbar.0 with stone_pickaxe

item replace entity @e[type=#buried:avatar] hotbar.6 with oak_sapling 3
item replace entity @e[type=#buried:avatar] hotbar.7 with cobblestone 6
item replace entity @e[type=#buried:avatar] hotbar.8 with dirt 5

execute as @e[type=#buried:avatar] at @s run summon minecraft:item ~0.5 65.5 ~0.2 {Item:{id:"cobblestone",count:1},PickupDelay:8s,Motion:[-0.02,-0.5,-0.01]}

execute as @e[type=#buried:avatar] run attribute @s movement_speed base reset
execute as @e[type=#buried:avatar] run attribute @s jump_strength base reset

kill @e[type=!#buried:avatar,scores={new_game=0..}]
scoreboard players reset @e[type=!minecraft:player] new_game
