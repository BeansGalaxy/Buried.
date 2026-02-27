give @s wheat_seeds
execute at @e[type=#buried:avatar] run give @s bone

# damage pickaxe
item modify entity @e[type=#buried:avatar] hotbar.0 buried:rand_damage
#oak_sapling
item modify entity @e[type=#buried:avatar] hotbar.6 buried:rand_decrease_count
item modify entity @e[type=#buried:avatar] hotbar.6 buried:rand_decrease_count
#cobblestone
item modify entity @e[type=#buried:avatar] hotbar.7 buried:rand_decrease_count 
#dirt
item modify entity @e[type=#buried:avatar] hotbar.8 buried:rand_decrease_count