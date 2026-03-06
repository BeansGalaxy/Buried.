tag @s add buried.new_game.ready

execute unless entity @e[type=#buried:avatar,tag=!buried.new_game.ready] run return run function buried:new_game/play_intro

execute store result score :new_game.players_ready buried if entity @e[tag=buried.new_game.ready]

title @a actionbar [{"score":{"objective":"buried","name":":new_game.players_ready"}},{"text":" Player(s) ready."}]