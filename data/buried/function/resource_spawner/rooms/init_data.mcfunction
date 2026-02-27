data modify storage buried:resource_rooms item set value "iron"
data modify storage buried:resource_rooms speed set value 22
data modify storage buried:resource_rooms warm_up set value 62
data modify storage buried:resource_rooms range set value 9
data modify storage buried:resource_rooms count set value 1

scoreboard players set resource_spawner.room.pointer buried 0
data modify storage buried:resource_rooms pointer set value -3

data modify storage buried:resource_rooms -3 set value "iron_ingot"
data modify storage buried:resource_rooms -2 set value "iron_ingot"
data modify storage buried:resource_rooms -1 set value "iron_ingot"
data modify storage buried:resource_rooms 0 set value "gravel"
data modify storage buried:resource_rooms 1 set value "jungle_sapling"
data modify storage buried:resource_rooms 2 set value "quartz"
data modify storage buried:resource_rooms 3 set value "granite"
data modify storage buried:resource_rooms 4 set value "diorite"
data modify storage buried:resource_rooms 5 set value "andesite"

scoreboard players set resource_spawner.room.size buried 2
