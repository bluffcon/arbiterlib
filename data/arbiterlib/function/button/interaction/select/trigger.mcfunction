advancement revoke @s only arbiterlib:features/button_interact

execute as @e[distance=..10,type=interaction,tag=arbiterlib.button] if data entity @s interaction at @s run function arbiterlib:button/interaction/select/macro with entity @s data.arbiterlib
