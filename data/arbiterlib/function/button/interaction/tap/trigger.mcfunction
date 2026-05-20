advancement revoke @s only arbiterlib:features/button_hit

execute as @e[distance=..10,type=interaction,tag=arbiterlib.button] if data entity @s attack at @s run function arbiterlib:button/interaction/tap/macro with entity @s data.arbiterlib
