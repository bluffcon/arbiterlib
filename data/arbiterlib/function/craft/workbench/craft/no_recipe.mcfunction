tag @s remove arbiterlib.block.workbench.craftable
execute if items block ~ ~ ~ container.7 *[custom_data~{arbiterlib:{item:"null"}}] run function arbiterlib:lib/block/blocks/workbench/work/fill_ring
execute if items block ~ ~ ~ container.7 *[custom_data~{arbiterlib:{item:"null"}}] run item replace block ~ ~ ~ container.7 with air
function arbiterlib:lib/block/blocks/workbench/work/modifiers/slot {slot:7}
function arbiterlib:lib/block/blocks/workbench/work/fill_ring