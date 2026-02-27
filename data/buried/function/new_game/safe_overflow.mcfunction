scoreboard players set init buried 2
clear @a

title @a times 2s 6s 1s
title @a subtitle {"text": "10+ player limit reached","color":"dark_purple",italic:true}
title @a title "The game will start shortly..."

schedule function buried:new_game/skip 10s