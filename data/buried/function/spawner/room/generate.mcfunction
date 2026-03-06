# locates if next spawner is monster or item and generates
execute if data storage buried:spawner next.monster run function buried:spawner/monster/place with storage buried:spawner next
execute if data storage buried:spawner next.item run function buried:spawner/resource/place with storage buried:spawner next

# locates room features and generates
function buried:spawner/room/feature/place with storage buried:spawner next

# prepares for next generation
function buried:spawner/room/index_list with storage buried:spawner
kill @s[tag=buried.spawner.room]