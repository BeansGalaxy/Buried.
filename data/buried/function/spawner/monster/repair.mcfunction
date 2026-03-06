# monster(spawner data)

$setblock ~ ~ ~ spawner$(monster)

# upgrades spawner
execute if entity @s[tag=buried.spawner.upgraded] run data merge block ~ ~ ~ {MaxSpawnDelay:180s,MinSpawnDelay:180s}

# hides faux spawner display
data modify entity @s block_state set value {Name:"minecraft:air"}

return run scoreboard players set @s buried.spawner.type 3
