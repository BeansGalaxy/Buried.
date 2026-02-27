# fall(int)

damage @s 1 minecraft:fall at ~ ~-1 ~ 
playsound minecraft:block.stone.fall block @a ~ ~ ~ 1 0.8
playsound minecraft:entity.player.big_fall player @a ~ ~ ~

tag @s add new_game.fell
$schedule function buried:new_game/intro/fall/loop_init $(fall)t