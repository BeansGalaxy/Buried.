particle copper_fire_flame ~ ~0.4 ~ 0.2 0.2 0.2 0 1
particle smoke ~ ~0.4 ~ 0.2 0.2 0.2 0 1

execute if score @s resource_spawner.resource.wait matches 0.. run return run scoreboard players remove @s resource_spawner.resource.wait 1

function buried:resource_spawner/resource/distribute with entity @s data