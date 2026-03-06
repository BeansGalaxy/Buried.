
# Prepares Spawn Room
setworldspawn 0 64 0
fill -9 64 -9 9 66 9 air
fill 1 63 1 -1 -64 -1 bedrock
fill 0 126 0 0 66 0 air

# Gameruels
gamerule spawn_phantoms false
gamerule minecraft:random_tick_speed 30
gamerule respawn_radius 0

# Objectives
scoreboard objectives add health health
scoreboard objectives add buried.new_game dummy
scoreboard objectives add buried.spawner.wait dummy
scoreboard objectives add buried.spawner.idle dummy
scoreboard objectives add buried.spawner.type dummy

# Constants
scoreboard players set 1 buried 1
scoreboard players set 5 buried 5
scoreboard players set 10 buried 10

# Variables
scoreboard players set :new_game.players_waiting buried 0
scoreboard players set :spawner.pointer buried 0
scoreboard players set :trial_chambers_distance buried 0

# Stone Mined Score
scoreboard objectives add buried.stone_mined minecraft.mined:minecraft.stone
scoreboard objectives setdisplay list buried.stone_mined
scoreboard objectives modify buried.stone_mined displayname "Stone Mined"

# Additional Processes
schedule function buried:util/chamber_too_far 5s
function buried:spawner/room/init_data

scoreboard players set init buried 1
