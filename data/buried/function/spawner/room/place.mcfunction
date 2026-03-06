summon block_display ~ ~ ~ {Tags:["buried.spawner.room"],block_state:{Name:"minecraft:spawner"},transformation:[1f,0f,0f,-0.5f,0f,1f,0f,-0.15f,0f,0f,1f,-0.5f,0f,0f,0f,1f]}

execute as @n[distance=..1,type=block_display,tag=buried.spawner.room] run function buried:util/floor
execute as @n[distance=..1,type=block_display,tag=buried.spawner.room] at @s run tp ~ ~-0.20 ~
