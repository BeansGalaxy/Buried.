# additional delay to kindle flame effects
execute unless score @s buried.spawner.idle matches ..0 run scoreboard players remove @s buried.spawner.idle 1

# tests if spawner should switch from hopper mode
execute unless block ~ ~-1 ~ hopper run return run scoreboard players set @s buried.spawner.type 1

# idle remove & idle fail is seperated to return hopper's score to 0 before disabling it from ticking
execute unless score @s buried.spawner.idle matches ..0 run return fail

# reset idle time
scoreboard players set @s[tag=buried.spawner.upgraded] buried.spawner.idle 3
scoreboard players set @s[tag=!buried.spawner.upgraded] buried.spawner.idle 8
particle soul_fire_flame ~ ~0.4 ~ 0.2 0.2 0.2 0 1
particle smoke ~ ~0.4 ~ 0.2 0.2 0.2 0 1

# more idle
execute if score @s buried.spawner.wait matches 1.. run return run scoreboard players remove @s buried.spawner.wait 1

# tries to fill hopper
data remove storage buried:temp spawner.failed_to_set_hopper
execute positioned ~ ~-1 ~ run function buried:spawner/hopper/fill_slots with entity @s data
execute if data storage buried:temp spawner.failed_to_set_hopper run return fail

# resets spawner delay
scoreboard players set @s buried.spawner.wait 22
particle minecraft:smoke ~ ~ ~ 0.5 0.7 0.5 0 20
particle minecraft:soul_fire_flame ~ ~ ~ 0.5 0.7 0.5 0 20


