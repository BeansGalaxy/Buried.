tag @s remove dead

function buried:player/clear_spawn

fill 1 63 1 -1 63 -1 grass_block replace #dirt 
tp @s 0 64 0

give @s stone_pickaxe