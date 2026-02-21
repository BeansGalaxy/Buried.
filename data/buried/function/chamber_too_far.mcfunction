# checks if the nearest trial chamber generates too far out and places one directly under spawn

execute positioned 0 0 0 store result score trial_chambers_distance buried run locate structure trial_chambers

execute if score trial_chambers_distance buried matches ..120 run return fail

place structure trial_chambers 0 0 0
scoreboard players set trial_chambers_distance buried -1