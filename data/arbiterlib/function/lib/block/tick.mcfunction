execute as @s[tag=arbiterlib.block.adjustable_light] run function arbiterlib:lib/block/adjust_light

execute as @s[tag=arbiterlib.block.workbench] run return run function arbiterlib:lib/block/blocks/workbench/tick

function #arbiterlib:t/block_ticks