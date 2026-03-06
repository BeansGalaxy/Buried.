# branches repair depending weither spawner was mob or item
execute if data entity @s data.item run return run function buried:spawner/resource/repair with entity @s data
execute if data entity @s data.monster run return run function buried:spawner/monster/repair with entity @s data

return fail
