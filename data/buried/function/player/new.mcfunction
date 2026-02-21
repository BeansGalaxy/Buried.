fill 1 63 1 -1 63 -1 air replace #dirt 
fill 1 63 1 -1 63 -1 grass_block destroy

function buried:player/clear_spawn

setblock 0 64 0 torch keep
tp @s 0 64 0

item replace entity @a hotbar.7 with stone_pickaxe
item replace entity @a hotbar.8 with water_bucket

tellraw @a [{text:"Welcome ",color:"aqua"},{selector:"@s"},{text:"!"}]
tag @s add init