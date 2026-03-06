# item(id)

playsound block.spawner.place block @a[distance=..32] ~ ~ ~ 0.8 0.8

# places item back into the spawner
$summon item ~ ~ ~ {Invulnerable:1,Rotation:[0,270],Age:-32768,Item:{id:$(item),count:64},PickupDelay:32767,Tags:["buried.spawner"]}
ride @n[distance=..1,type=item] mount @s

# hides faux spawner display
setblock ~ ~ ~ spawner
data modify entity @s block_state set value {Name:"minecraft:air"}

return run scoreboard players set @s buried.spawner.type 1