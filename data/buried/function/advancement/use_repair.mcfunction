advancement revoke @s only buried:use_repair

# broad test for spawner room whereas not to waste resources
execute unless entity @e[distance=..15,type=block_display,tag=buried.spawner] run return fail

# prepare raycast depth on player's reach
execute store result score :spawner.repair.raycast buried run attribute @s block_interaction_range get 100

# begin raycast
execute anchored eyes run function buried:spawner/room/repair/raycast


