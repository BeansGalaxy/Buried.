execute unless score init buried matches ..1 run return fail

schedule function buried:new_game/tick 1t append

execute as @e[type=interaction,scores={new_game=0..}] if data entity @s interaction run function buried:new_game/click_detect

execute as @a run function buried:new_game/set_inventory

execute store result score new_game.player_total buried if entity @e[type=#buried:avatar]

execute if score new_game.player_total buried matches 11.. run function buried:new_game/safe_overflow