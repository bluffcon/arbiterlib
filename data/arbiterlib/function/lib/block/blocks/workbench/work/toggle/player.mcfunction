execute as @e[type=item_display,distance=..10,tag=arbiterlib.block.workbench] at @s if score @s arbiterlib.block.active matches 1 run function arbiterlib:lib/block/blocks/workbench/work/toggle/switch_state

playsound block.lever.click ui @s ~ ~ ~ 0.4 1.1 0.1