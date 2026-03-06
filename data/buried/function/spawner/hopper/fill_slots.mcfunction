$execute unless items block ~ ~ ~ container.0 * run return run item replace block ~ ~ ~ container.0 with $(item) 1
$execute if items block ~ ~ ~ container.0 $(item)[minecraft:count={min:0,max:63}] run return run item modify block ~ ~ ~ container.0 buried:increase_resource_spawner_item

$execute unless items block ~ ~ ~ container.1 * run return run item replace block ~ ~ ~ container.1 with $(item) 1
$execute if items block ~ ~ ~ container.1 $(item)[minecraft:count={min:0,max:63}] run return run item modify block ~ ~ ~ container.1 buried:increase_resource_spawner_item

$execute unless items block ~ ~ ~ container.2 * run return run item replace block ~ ~ ~ container.2 with $(item) 1
$execute if items block ~ ~ ~ container.2 $(item)[minecraft:count={min:0,max:63}] run return run item modify block ~ ~ ~ container.2 buried:increase_resource_spawner_item

$execute unless items block ~ ~ ~ container.3 * run return run item replace block ~ ~ ~ container.3 with $(item) 1
$execute if items block ~ ~ ~ container.3 $(item)[minecraft:count={min:0,max:63}] run return run item modify block ~ ~ ~ container.3 buried:increase_resource_spawner_item

$execute unless items block ~ ~ ~ container.4 * run return run item replace block ~ ~ ~ container.4 with $(item) 1
$execute if items block ~ ~ ~ container.4 $(item)[minecraft:count={min:0,max:63}] run return run item modify block ~ ~ ~ container.4 buried:increase_resource_spawner_item

data modify storage buried:temp spawner.failed_to_set_hopper set value 1b