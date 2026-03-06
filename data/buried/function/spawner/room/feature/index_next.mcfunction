$data modify storage buried:spawner feature.$(name).next set from storage buried:spawner feature.$(name).$(pointer)

$execute store result score var buried run data get storage buried:spawner feature.$(name).pointer 1

scoreboard players operation var buried += 1 buried
$execute if score var buried matches $(size).. run scoreboard players set var buried 0

$execute store result storage buried:spawner feature.$(name).pointer int 1 run scoreboard players get var buried
