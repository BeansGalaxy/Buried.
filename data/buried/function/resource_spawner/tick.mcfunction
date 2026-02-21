# item(id) count(int) range(int) speed(int) warm_up(int)

execute unless block ~ ~ ~ minecraft:barrier run return run function buried:resource_spawner/break

# Hopper timer counts down without a hopper present under the spawner
# so players get immediate feedback w/ a item instantly going to the hopper
execute unless score @s resource_spawner.hopper.idle matches ..0 run scoreboard players remove @s resource_spawner.hopper.idle 1
execute if score @s resource_spawner.hopper.idle matches ..0 unless score @s resource_spawner.hopper.wait matches ..0 run scoreboard players remove @s resource_spawner.hopper.wait 1

execute if block ~ ~-1 ~ minecraft:hopper run return run function buried:resource_spawner/hopper/tick with entity @s data

$execute if entity @p[distance=..$(range),gamemode=!spectator] run return run function buried:resource_spawner/resource/tick with entity @s data

$scoreboard players set @s resource_spawner.resource.wait $(warm_up)
