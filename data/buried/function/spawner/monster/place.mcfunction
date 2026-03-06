# monster(spawner data)

$setblock ~ ~ ~ spawner$(monster)

$summon block_display ~ ~0.15 ~ {Tags:["buried.spawner"], data:{monster:$(monster)}, transformation:[1f,0f,0f,-0.5f,0f,1f,0f,-0.15f,0f,0f,1f,-0.5f,0f,0f,0f,1f]}

scoreboard players set @n[distance=..2,type=block_display,tag=buried.spawner] buried.spawner.type 3