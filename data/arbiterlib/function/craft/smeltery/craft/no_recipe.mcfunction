tag @s remove arbiterlib.block.smeltery.smeltable
execute if items block ~ ~ ~ container.6 *[custom_data~{arbiterlib:{item:"null"}}] run function arbiterlib:lib/block/blocks/smeltery/work/fill_ring
execute if items block ~ ~ ~ container.6 *[custom_data~{arbiterlib:{item:"null"}}] run item replace block ~ ~ ~ container.6 with air
function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:6}
function arbiterlib:lib/block/blocks/smeltery/work/fill_ring