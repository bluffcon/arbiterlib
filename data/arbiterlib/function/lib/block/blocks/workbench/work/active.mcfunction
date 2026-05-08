execute unless entity @p[distance=..10] run return run setblock ~ ~ ~ barrel[open=false,facing=up]

execute if score @s arbiterlib.block.state matches 1 run function arbiterlib:lib/block/blocks/workbench/work/fill_regular
execute if score @s arbiterlib.block.state matches 2 run function arbiterlib:lib/block/blocks/workbench/work/fill_catalyst
function arbiterlib:lib/block/blocks/workbench/work/toggle/put_button

execute if score @s arbiterlib.block.errors matches 1 run return run function arbiterlib:lib/block/blocks/workbench/work/fill_error_ring


function arbiterlib:lib/block/blocks/workbench/work/record/main


