# speed(int) range(int) item(id) count(int)

$function buried:resource_spawner/place {speed:$(speed),warm_up:$(warm_up),range:$(range),item:$(item),count:$(count)}

playsound minecraft:block.spawner.place block @a[distance=..32] ~ ~ ~ 0.8 0.8
kill @s