execute unless score @s arbiterlib.player matches 1.. run return run function arbiterlib:errors/mustplayer
summon item ~ ~ ~ {Item:{id:"player_head",count:1}}
execute as @s run item modify entity @n[type=item] container.0 {"function": "minecraft:fill_player_head","entity": "this","conditions": []}