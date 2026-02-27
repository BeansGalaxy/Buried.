# speed(int) warm_up(int) range(int) item(id) count(int) pointer(int) 1.2.3..(id)

tellraw @a {text:"\n\n"}
$say item:$(item)
$say (next) pointer:$(pointer)
tellraw @a {text:""}
$say speed:$(speed)
$say warm_up:$(warm_up)
$say range:$(range)
$say count:$(count)
