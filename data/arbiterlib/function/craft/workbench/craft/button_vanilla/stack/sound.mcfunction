execute at @a as @n[type=item_display,tag=arbiterlib.block.workbench,distance=..5,scores={arbiterlib.block.active=1}] run playsound block.anvil.use ui @a[distance=..5] ~ ~ ~ 0.6 1.1

execute at @a as @n[type=item_display,tag=arbiterlib.block.workbench,distance=..5,scores={arbiterlib.block.active=1}] run tag @s remove arbiterlib.block.workbench.stack
execute at @a as @n[type=item_display,tag=arbiterlib.block.workbench,distance=..5,scores={arbiterlib.block.active=1}] run tag @s remove arbiterlib.block.workbench.failure
