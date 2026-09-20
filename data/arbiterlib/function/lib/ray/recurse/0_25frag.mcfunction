execute if score .ray_count arbiterlib.temp matches ..0 run return fail
execute as @n[type=marker,tag=arbiterlib.ray.entry] at @s if block ^ ^ ^0.25 #blocks_motion run return fail

execute as @n[type=marker,tag=arbiterlib.ray.entry] at @s run summon marker ^ ^ ^0.25 {Tags:[arbiterlib.ray]}
execute as @n[type=marker,tag=arbiterlib.ray.entry] at @s run tp @s ^ ^ ^0.25

scoreboard players remove .ray_count arbiterlib.temp 1
function arbiterlib:lib/ray/recurse/0_25frag