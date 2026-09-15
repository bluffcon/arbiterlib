
execute if block ~ ~1 ~ crafter run setblock ~ ~1 ~ air destroy
execute if block ~ ~2 ~ redstone_block if entity @s[tag=arbiterlib.block.workbench.brought_their_own] run setblock ~ ~2 ~ air destroy
function arbiterlib:lib/block/generic_break