execute at @a as @e[type=item_display,distance=..10,tag=arbiterlib.block.workbench] at @s unless items block ~ ~ ~ container.16 * run return run function arbiterlib:craft/workbench/vanilla/put_back

execute at @a as @e[type=item_display,distance=..10,tag=arbiterlib.block.workbench] at @s run playsound block.anvil.place ui @a[distance=..5] ~ ~ ~ 0.6 1.1