function buried:player/clear_spawn

execute if score init buried matches ..1 run return run function buried:new_game/hold_new_player

item replace entity @s hotbar.0 with stone_pickaxe

item replace entity @s hotbar.7 with oak_sapling 2
item replace entity @s hotbar.8 with dirt 4

tag @s add init
tellraw @a [{text:"Welcome ",color:"aqua"},{selector:"@s"},{text:"!"}]

setblock -1 64 -1 torch keep
tp @s 0 64 0
