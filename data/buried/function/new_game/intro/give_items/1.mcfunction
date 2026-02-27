playsound minecraft:block.wood.place player @a ~-1 ~ ~-1 1 0.8
setblock ~-1 64 ~-1 minecraft:torch
tp @s ~ ~ ~ 137.1 49.6

item replace entity @s weapon.offhand with minecraft:torch 3

# damage pickaxe
item modify entity @e[type=#buried:avatar] hotbar.0 buried:rand_damage

tag @s add new_game.gifted
execute as @p[tag=!new_game.gifted] run return run function buried:new_game/intro/give_items/2

loot give @s loot buried:resource_map

give @s wheat_seeds
execute at @e[type=#buried:avatar] run give @s bone
