# countdown raycast
scoreboard players remove :spawner.repair.raycast buried 2

# cancel raycast once broken spawner is hit
execute if block ~ ~ ~ barrier run return run function buried:spawner/room/repair/raycast_hit

# loop raycast
execute unless score :spawner.repair.raycast buried matches ..0 positioned ^ ^ ^0.02 run function buried:spawner/room/repair/raycast