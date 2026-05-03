execute if entity @s[type=player] as @n[type=!#arbiterlib:inanimate] run return run function arbiterlib:m/util/noai
execute if data entity @s {NoAI:1b} run return run function arbiterlib:m/util/noai/noai0b
execute unless data entity @s {NoAI:1b} run return run function arbiterlib:m/util/noai/noai1b