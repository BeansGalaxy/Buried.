loot give @s loot buried:resource_map

# damage pickaxe
item modify entity @e[type=#buried:avatar] hotbar.0 buried:rand_damage
#oak_sapling
item modify entity @e[type=#buried:avatar] hotbar.6 buried:rand_decrease_count
item modify entity @e[type=#buried:avatar] hotbar.6 buried:rand_decrease_count
#cobblestone
item modify entity @e[type=#buried:avatar] hotbar.7 buried:rand_decrease_count 
#dirt
item modify entity @e[type=#buried:avatar] hotbar.8 buried:rand_decrease_count

tag @s add new_game.gifted
execute as @p[tag=!new_game.gifted] run return run function buried:new_game/intro/give_items/3

give @s wheat_seeds
execute at @e[type=#buried:avatar] run give @s bone