scoreboard players set init buried 2

clear @a

execute as @e[type=#buried:avatar] at @s run tp @s ~ 64 ~

item replace entity @e[type=#buried:avatar] hotbar.0 with stone_pickaxe
item replace entity @e[type=#buried:avatar] hotbar.6 with oak_sapling 3
item replace entity @e[type=#buried:avatar] hotbar.7 with cobblestone 6
item replace entity @e[type=#buried:avatar] hotbar.8 with dirt 5

execute as @e[type=#buried:avatar] run attribute @s movement_speed base reset
execute as @e[type=#buried:avatar] run attribute @s jump_strength base reset

kill @e[type=!#buried:avatar,scores={new_game=0..}]
scoreboard players reset @e[type=!minecraft:player] new_game

execute as @e[type=#buried:avatar] run effect clear @s blindness

execute as @p[x=0,y=64,z=0] at @s run function buried:new_game/intro/give_items/1

gamerule spawn_mobs true
