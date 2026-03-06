# tests if spawner should switch to hopper mode
execute if block ~ ~-1 ~ hopper run return run function buried:spawner/hopper/enable

# disables out of range spawner and adds warmup
execute unless entity @p[gamemode=!spectator,distance=..9] run return run scoreboard players set @s buried.spawner.wait 46

# spawner idle
particle copper_fire_flame ~ ~0.4 ~ 0.2 0.2 0.2 0 1
particle smoke ~ ~0.4 ~ 0.2 0.2 0.2 0 1
execute as @s[scores={buried.spawner.wait=1..}] run return run scoreboard players remove @s buried.spawner.wait 1

# gives nearby players
$give @a[distance=..9,gamemode=!spectator] $(item) 1
particle smoke ~ ~0.4 ~ 0.5 0.5 0.5 0 20
particle copper_fire_flame ~ ~0.4 ~ 0.5 0.5 0.5 0 20

# resets spawner delay
scoreboard players set @s[tag=buried.spawner.upgraded] buried.spawner.wait 8
scoreboard players set @s[tag=!buried.spawner.upgraded] buried.spawner.wait 22