setblock ~ ~ ~ air
kill @n[distance=..1,type=item,tag=resource_spawner]
kill @s

scoreboard players reset @s resource_spawner.hopper.idle
scoreboard players reset @s resource_spawner.hopper.wait
scoreboard players reset @s resource_spawner.resource.wait