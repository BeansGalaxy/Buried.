title @a times 0s 30s 0s
title @a subtitle buried.
title @a title ""

clear @a

scoreboard players set init buried 2
function buried:new_game/intro/mine_stone
schedule function buried:new_game/intro/mine_stone 28t append
schedule function buried:new_game/intro/mine_stone 56t append
schedule function buried:new_game/intro/mine_stone 84t append
schedule function buried:new_game/intro/mine_stone 112t append
schedule function buried:new_game/intro/fall/loop_init 130t append
