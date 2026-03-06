# Process new players joining the server for the first time
execute if score init buried matches 1.. as @e[type=#buried:avatar,tag=!init] run function buried:player/new

# tick function for all spawners
execute as @e[type=block_display,tag=buried.spawner] at @s run function buried:spawner/tick with entity @s data

# searches for player respawns
execute as @a[tag=buried.dead] if score @s health matches 1.. run function buried:player/respawn
execute as @a[gamemode=!spectator,scores={health=0}] run tag @s add buried.dead

# searches for ungenerated spawner rooms
execute at @a[gamemode=!spectator] as @e[distance=..31,type=block_display,tag=buried.spawner.room] at @s run function buried:spawner/room/generate with storage buried:spawner next
