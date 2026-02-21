setworldspawn 0 64 0
fill -9 64 -9 9 66 9 air
fill 1 63 1 -1 63 -1 air
fill 1 62 1 -1 -64 -1 bedrock

execute positioned 10 64 0 run function buried:resource_spawner/place {speed:22,warm_up:42,range:4,item:dirt,count:1}
execute positioned 0 64 10 run function buried:resource_spawner/place {speed:22,warm_up:42,range:4,item:oak_sapling,count:1}
execute positioned -10 64 0 run function buried:resource_spawner/place {speed:22,warm_up:42,range:4,item:dirt,count:1}
execute positioned 0 64 -10 run function buried:resource_spawner/place {speed:22,warm_up:42,range:4,item:oak_sapling,count:1}

gamerule minecraft:random_tick_speed 30
gamerule respawn_radius 0

scoreboard objectives add resource_spawner.hopper.idle dummy
scoreboard objectives add resource_spawner.hopper.wait dummy
scoreboard objectives add resource_spawner.resource.wait dummy
scoreboard players set resource_spawner.hopper.idle buried 8

scoreboard objectives add buried dummy
scoreboard players set resource_spawner.range_padding buried 2
scoreboard players set init buried 1

schedule function buried:chamber_too_far 5s