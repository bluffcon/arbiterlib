advancement revoke @s only arbiterlib:features/open_smeltery

execute as @e[type=item_display,distance=..10,tag=arbiterlib.block.smeltery] at @s if block ~ ~ ~ barrel[open=true] run function arbiterlib:lib/block/blocks/smeltery/open