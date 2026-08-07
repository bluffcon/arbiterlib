execute unless entity @p[distance=..5] run return run setblock ~ ~ ~ barrel[open=false,facing=up]
function arbiterlib:lib/block/blocks/smeltery/work/fill_regular

execute if score @s arbiterlib.block.errors matches 1 run return run function arbiterlib:lib/block/blocks/smeltery/work/fill_error_ring


#function arbiterlib:craft/workbench/craft/main

