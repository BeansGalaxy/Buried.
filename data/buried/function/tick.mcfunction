execute if score init buried matches 1 as @a[tag=!init] run function buried:player/new

execute as @e[tag=resource_spawner,type=block_display] at @s run function buried:resource_spawner/tick with entity @s data

execute as @a[tag=dead] if score @s health matches 1.. run function buried:player/respawn
execute as @a[gamemode=!spectator,scores={health=0}] run tag @s add dead