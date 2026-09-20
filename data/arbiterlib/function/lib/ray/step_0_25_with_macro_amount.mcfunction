$scoreboard players set .ray_count arbiterlib.temp $(amount)

summon marker ~ ~ ~ {Tags:[arbiterlib.ray.entry]}
rotate @n[type=marker,tag=arbiterlib.ray.entry] ~ ~

function arbiterlib:lib/ray/recurse/0_25