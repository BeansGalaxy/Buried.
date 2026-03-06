execute if items entity @s weapon.mainhand netherite_scrap run return run item modify entity @s weapon.mainhand buried:decrement_item

execute if items entity @s weapon.offhand netherite_scrap run return run item modify entity @s weapon.offhand buried:decrement_item

execute if items entity @s weapon.mainhand netherite_ingot if function buried:spawner/room/repair/upgrade_spawner run return run item modify entity @s weapon.mainhand buried:decrement_item

execute if items entity @s weapon.offhand netherite_ingot if function buried:spawner/room/repair/upgrade_spawner run return run item modify entity @s weapon.offhand buried:decrement_item

