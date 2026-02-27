$data modify storage buried:resource_rooms item set from storage buried:resource_rooms $(pointer)

$scoreboard players set resource_spawner.room.pointer buried $(pointer)

execute if score resource_spawner.room.pointer buried >= resource_spawner.room.size buried run scoreboard players set resource_spawner.room.pointer buried -1

scoreboard players operation resource_spawner.room.pointer buried += 1 buried

execute store result storage buried:resource_rooms pointer int 1 run scoreboard players get resource_spawner.room.pointer buried
