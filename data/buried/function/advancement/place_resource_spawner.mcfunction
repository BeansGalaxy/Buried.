advancement revoke @s only buried:place_resource_spawner

execute as @e[tag=spawner_instance] at @s run function buried:advancement/process_spawner_instance with entity @s data