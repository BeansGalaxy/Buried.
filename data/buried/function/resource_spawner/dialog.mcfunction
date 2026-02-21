$data modify storage buried:temp resource_spawner.range set value $(range)
$data modify storage buried:temp resource_spawner.item set value $(item)
$data modify storage buried:temp resource_spawner.count set value $(count)

$scoreboard players set temp.dialog.speed_ticks buried $(speed_ticks)
$scoreboard players set temp.dialog.speed_seconds buried $(speed_seconds)

scoreboard players set var:0 buried 20
scoreboard players operation temp.dialog.speed_seconds buried *= var:0 buried
scoreboard players operation temp.dialog.speed_ticks buried += temp.dialog.speed_seconds buried
execute store result storage buried:temp resource_spawner.speed int 1 run scoreboard players get temp.dialog.speed_ticks buried

$scoreboard players set temp.dialog.warm_up_ticks buried $(warm_up_ticks)
$scoreboard players set temp.dialog.warm_up_seconds buried $(warm_up_seconds)

scoreboard players set var:0 buried 20
scoreboard players operation temp.dialog.warm_up_seconds buried *= var:0 buried
scoreboard players operation temp.dialog.warm_up_ticks buried += temp.dialog.warm_up_seconds buried
execute store result storage buried:temp resource_spawner.warm_up int 1 run scoreboard players get temp.dialog.warm_up_ticks buried

function buried:resource_spawner/give with storage buried:temp resource_spawner