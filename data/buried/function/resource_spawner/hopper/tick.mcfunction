execute unless score @s resource_spawner.hopper.idle matches ..0 run return fail

particle minecraft:soul_fire_flame ~ ~0.4 ~ 0.2 0.2 0.2 0 1
particle minecraft:smoke ~ ~0.4 ~ 0.2 0.2 0.2 0 1

scoreboard players operation @s resource_spawner.hopper.idle = resource_spawner.hopper.idle buried

execute if score @s resource_spawner.hopper.wait matches ..0 positioned ~ ~-1 ~ run function buried:resource_spawner/hopper/distribute with entity @s data


