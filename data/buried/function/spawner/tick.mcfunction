# tests if player broke this spawner
execute unless block ~ ~ ~ minecraft:spawner run return run function buried:spawner/break

# ticks for resource spawner
execute if entity @s[scores={buried.spawner.type=1}] run return run function buried:spawner/resource/tick with entity @s data

# ticks for resource spawners above a hopper
execute if entity @s[scores={buried.spawner.type=2}] run return run function buried:spawner/hopper/tick