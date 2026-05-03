advancement revoke @s only arbiterlib:features/open_workbench

execute as @e[type=item_display,distance=..10,tag=arbiterlib.block.workbench] at @s if block ~ ~ ~ barrel[open=true] run function arbiterlib:lib/block/blocks/workbench/open