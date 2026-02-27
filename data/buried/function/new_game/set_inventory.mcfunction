execute if items entity @s player.cursor diamond_pickaxe run function buried:new_game/start_game

execute if items entity @s player.cursor barrier run function buried:new_game/skip

execute if items entity @s inventory.* * run clear @s

item replace entity @s player.cursor with air

item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air

execute unless items entity @s hotbar.8 barrier run item replace entity @s hotbar.8 with barrier[item_name={text:"Force Skip Intro"}]

execute if entity @s[tag=new_game.ready] run return run item replace entity @s hotbar.0 with stone_pickaxe[item_name={text:"Waiting for players..."},tooltip_display={hidden_components:["attribute_modifiers"]}]

execute unless items entity @s hotbar.0 diamond_pickaxe run item replace entity @s hotbar.0 with diamond_pickaxe[item_name={text:"Start Game"},tooltip_display={hidden_components:["attribute_modifiers"]}]