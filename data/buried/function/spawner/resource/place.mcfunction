# item(id)

setblock ~ ~ ~ spawner

$summon block_display ~ ~0.15 ~ {Tags:["buried.spawner"], data:{item:$(item)}, transformation:[1f,0f,0f,-0.5f,0f,1f,0f,-0.15f,0f,0f,1f,-0.5f,0f,0f,0f,1f], Passengers:[{id:"item",Invulnerable:1,Rotation:[0,270],Age:-32768,Item:{id:$(item),count:64},PickupDelay:32767,Tags:["buried.spawner"]}]}

scoreboard players set @n[distance=..2,type=block_display,tag=buried.spawner] buried.spawner.type 1