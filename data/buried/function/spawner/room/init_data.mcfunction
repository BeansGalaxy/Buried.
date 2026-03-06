# Skips 2 inital iron rooms if world is singleplayer
scoreboard players set :spawner.pointer buried -1
execute as @p run scoreboard players set :spawner.pointer buried 1
execute store result storage buried:spawner pointer int 1 run scoreboard players get :spawner.pointer buried

# Available spawners
data modify storage buried:spawner next set value {item:"iron_ingot", feature:"storage"}
data modify storage buried:spawner -1 set value {item:"iron_ingot", feature:"storage"}
data modify storage buried:spawner 0 set value {item:"iron_ingot", feature:"storage"}
data modify storage buried:spawner 1 set value {monster:{SpawnPotentials:[{weight:1,data:{entity:{id:"piglin",IsImmuneToZombification:1b},equipment:{loot_table:"buried:equipment/nether_pig"}}},{weight:9,data:{entity:{id:"zombified_piglin"}}}]}, feature:"nether_pigs"}
data modify storage buried:spawner 2 set value {monster:{MaxNearbyEntities:1s,SpawnCount:1s,SpawnRange:7s,SpawnPotentials:[{weight:1,data:{entity:{id:"wandering_trader"}}}]}, feature:"trader"}

scoreboard players set :spawner.list_size buried 2

# Available spawner room features
data modify storage buried:spawner feature.storage set value {name: "storage", size:2, 0:"buried:spawner/resource/simple", 1:"buried:spawner/resource/storage", pointer:0}
data modify storage buried:spawner feature.nether_pigs set value {name: "nether_pigs", size: 2, 0:"buried:spawner/nether_pigs/warped", 1:"buried:spawner/nether_pigs/crimson"}
data modify storage buried:spawner feature.trader set value {name: "trader", size: 4, 0:"buried:spawner/trader/lilac", 1:"buried:spawner/trader/peony", 2:"buried:spawner/trader/rose_bush", 3:"buried:spawner/trader/sunflower"}

# Randomize feature pointers
execute store result storage buried:spawner feature.nether_pigs.pointer int 1 run random value 0..1
execute store result storage buried:spawner feature.trader.pointer int 1 run random value 0..3

