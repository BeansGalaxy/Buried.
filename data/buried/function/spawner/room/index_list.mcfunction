# searches and loads data into the next slot
data remove storage buried:spawner next
$data modify storage buried:spawner next set from storage buried:spawner $(pointer)
$scoreboard players set :spawner.pointer buried $(pointer)

# checks if list has reached the end and resets it
execute if score :spawner.pointer buried >= :spawner.list_size buried run scoreboard players set :spawner.pointer buried -1

# indexes the pointer in storage and buried scoreboard
execute store result storage buried:spawner pointer int 1 run scoreboard players operation :spawner.pointer buried += 1 buried
