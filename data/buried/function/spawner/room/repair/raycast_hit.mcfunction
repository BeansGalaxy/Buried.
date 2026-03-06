# step back one raycast and summon an entity which the looking_at predicate can search for
# interaction has a height of 0 to ensure the eyes of the entity are where the raycast landed. looking_at searches for eyes to eyes and an interaction's eyes locked to the bottom of it's hitbox while the XZ is always centered
summon interaction ^ ^ ^-0.02 {width:1,height:0,Tags:["buried.spawner.repair"]}

# with no solid interuptions between the raycast and player the repairs finish
execute if predicate buried:looking_at_repair at @n[distance=..1,type=block_display,tag=buried.spawner] run function buried:spawner/room/repair/finish_repair

# removes entity
kill @n[distance=..1,type=interaction,tag=buried.spawner.repair]
