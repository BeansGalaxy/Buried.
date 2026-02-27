setworldspawn 0 64 0
fill -9 64 -9 9 66 9 air
fill 1 63 1 -1 -64 -1 bedrock
fill 0 126 0 0 66 0 air

gamerule spawn_phantoms false
gamerule minecraft:random_tick_speed 30
gamerule respawn_radius 0

scoreboard objectives add health health
scoreboard objectives add new_game dummy

scoreboard objectives add resource_spawner.hopper.idle dummy
scoreboard objectives add resource_spawner.hopper.wait dummy
scoreboard objectives add resource_spawner.resource.wait dummy
scoreboard players set resource_spawner.hopper.idle buried 8
scoreboard players set resource_spawner.range_padding buried 2

scoreboard objectives add buried dummy
scoreboard players set init buried 1
scoreboard players set 1 buried 1

schedule function buried:chamber_too_far 5s

function buried:resource_spawner/rooms/init_data

execute if entity @a[gamemode=creative] run function buried:new_game/skip
