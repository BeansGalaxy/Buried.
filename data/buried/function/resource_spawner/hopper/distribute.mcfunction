data remove storage buried:temp resource_spawner.failed_to_set_hopper

function buried:resource_spawner/hopper/fill_slots with entity @s data

execute if data storage buried:temp resource_spawner.failed_to_set_hopper run return fail

particle minecraft:smoke ~ ~0.8 ~ 0.5 0.7 0.5 0 20
particle minecraft:soul_fire_flame ~ ~0.8 ~ 0.5 0.7 0.5 0 20

$scoreboard players set @s resource_spawner.hopper.wait $(speed)