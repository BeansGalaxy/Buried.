# checks if op player removed this spawner
execute if score @s buried.spawner.type matches 0 run return run execute unless block ~ ~ ~ barrier run function buried:spawner/destroy

# kills riding item entity
execute on passengers run kill

# disguises barrier as unbreakable spawner
data modify entity @s block_state set value {Name:"minecraft:spawner"}
execute as @e[distance=..1,type=experience_orb] run kill
setblock ~ ~ ~ barrier

# disables other ticking functions
scoreboard players set @s buried.spawner.type 0

# drops repair item
execute if entity @s[tag=buried.spawner.upgraded] run return run function buried:spawner/break_upgraded
summon item ~ ~ ~ {Item:{"id":"netherite_scrap","count":1,"components":{"minecraft:consumable":{"consume_seconds":999999999,"animation":"brush","sound":"minecraft:block.spawner.hit","on_consume_effects":[]},"minecraft:lore":[{"text":"Repairs Spawners","color":"dark_gray","italic":false}],"minecraft:use_effects":{"can_sprint":true,"speed_multiplier":1}}}}
