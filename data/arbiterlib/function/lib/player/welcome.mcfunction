
title @s times 0 1200 20

$tellraw @s $(message)
$title @s title $(title)

scoreboard players set @s arbiterlib.stats.walk 0
advancement revoke @s only arbiterlib:move

playsound entity.cat.ambient ui @s ~ ~ ~ 0.5 1.7
playsound entity.arrow.hit_player ui @s ~ ~ ~ 0.8 2
particle end_rod ~ ~0.1 ~ 0.1 0.05 0.1 0.05 20 force @s

# add your datapack's welcome messages to this tag
function #arbiterlib:welcomes