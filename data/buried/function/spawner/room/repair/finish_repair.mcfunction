# shrinks stack by 1 on repair + determines if used item grants spawner upgraded stats once repaired
function buried:spawner/room/repair/consume_item

playsound block.spawner.place block @a[distance=..31] ~ ~ ~ 0.8 0.8

# repairs from block_display entity
execute as @n[distance=..1,type=block_display,tag=buried.spawner] run function buried:spawner/repair