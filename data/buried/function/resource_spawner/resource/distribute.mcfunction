particle smoke ~ ~0.2 ~ 0.5 0.5 0.5 0 20
particle copper_fire_flame ~ ~0.2 ~ 0.5 0.5 0.5 0 20

$give @a[distance=..$(range),gamemode=!spectator] $(item) $(count)
$scoreboard players set @s resource_spawner.resource.wait $(speed)