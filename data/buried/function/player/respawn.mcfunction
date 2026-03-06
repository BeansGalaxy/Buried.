tag @s remove buried.dead

# prepare spawn
function buried:player/clear_spawn
fill 1 63 1 -1 63 -1 bedrock

# move to spawn
tp @s 0 64 0
give @s stone_pickaxe