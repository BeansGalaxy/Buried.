tag @s add init

recipe give @s cauldron
recipe give @s cobblestone_slab_from_cobblestone_stonecutting
recipe give @s cobblestone_slab
recipe give @s cobblestone_stairs_from_cobblestone_stonecutting
recipe give @s cobblestone_stairs
recipe give @s stone
recipe give @s stone_spear
recipe give @s stone_sword
recipe give @s cobblestone_wall_from_cobblestone_stonecutting
recipe give @s cobblestone_wall
recipe give @s crafting_table
recipe give @s furnace
recipe give @s lever
recipe give @s stone_axe
recipe give @s stone_pickaxe
recipe give @s stone_shovel
recipe give @s stone_hoe
recipe give @s torch

scoreboard players set new_game.players_waiting buried 0
execute as @e[type=#buried:avatar] if score @s new_game > new_game.players_waiting buried run scoreboard players operation new_game.players_waiting buried = @s new_game
scoreboard players operation new_game.players_waiting buried += 1 buried
scoreboard players operation @s new_game = new_game.players_waiting buried

gamerule spawn_mobs false
attribute @s movement_speed base set 0
attribute @s jump_strength base set 0
effect give @s blindness infinite 0 true

summon happy_ghast 0 200 0 {NoAI:1b,Silent:1,active_effects:[{id:"invisibility",duration:-1,show_particles:0}],Tags:["new_game.temp"]}

summon interaction 0 200 0 {height:1,width:2,Tags:["new_game.temp"]}

scoreboard players operation @e[tag=new_game.temp] new_game = @s new_game

tag @e[tag=new_game.temp] remove new_game.temp

# this spreadplayers fails when trying more than 9+ players
# add a fail safe + manual way to start the game ignoring the intro
spreadplayers 0 0 5 8 false @e[type=#buried:avatar,scores={new_game=0..}]
execute as @e[type=#buried:avatar,scores={new_game=0..}] at @s run function buried:new_game/hold_player_after_spread

execute if entity @s[type=!player] run attribute @s minecraft:gravity base set 0


