# speed(int) warm_up(int) range(int) item(id) count(int)

kill @e[tag=resource_spawner,distance=..1]
setblock ~ ~ ~ barrier replace

$summon minecraft:block_display ~ ~0.15 ~ {block_state:{Name:"minecraft:spawner"}, transformation:[1f,0f,0f,-0.5f,0f,1f,0f,-0.15f,0f,0f,1f,-0.5f,0f,0f,0f,1f], Passengers:[{id:"item",Invulnerable:1,Rotation:[0,270],Age:-32768,Item:{id:$(item),count:64},PickupDelay:32767,Tags:["resource_spawner"]}], Tags:["resource_spawner"], data:{speed:$(speed),warm_up:$(warm_up),range:$(range),item:$(item),count:$(count)}}