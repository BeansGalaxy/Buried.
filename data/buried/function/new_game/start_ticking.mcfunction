execute unless score init buried matches ..1 run return fail

execute if entity @a[gamemode=creative] run return run function buried:new_game/skip
execute as @p run return run function buried:new_game/ready_up

function buried:new_game/tick