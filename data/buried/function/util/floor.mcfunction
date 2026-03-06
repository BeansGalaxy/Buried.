# @s

execute store result score .temp.pos buried run data get entity @s Pos[0]
scoreboard players operation .temp.pos buried *= 10 buried
execute store result entity @s Pos[0] double 0.1 run scoreboard players operation .temp.pos buried += 5 buried

execute store result score .temp.pos buried run data get entity @s Pos[1]
scoreboard players operation .temp.pos buried *= 10 buried
execute store result entity @s Pos[1] double 0.1 run scoreboard players operation .temp.pos buried += 5 buried

execute store result score .temp.pos buried run data get entity @s Pos[2]
scoreboard players operation .temp.pos buried *= 10 buried
execute store result entity @s Pos[2] double 0.1 run scoreboard players operation .temp.pos buried += 5 buried