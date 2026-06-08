execute as @e[type=item,distance=..2] if items entity @s container.* barrel run kill @s
execute as @e[type=item,distance=..2] if items entity @s container.* knowledge_book run kill @s
stopsound @a * entity.item.pickup
function arbiterlib:lib/block/drop with entity @s data.arbiterlib.block
execute if block ~ ~1 ~ crafter run setblock ~ ~1 ~ air destroy
execute if block ~ ~2 ~ redstone_block if entity @s[tag=arbiterlib.block.workbench.brought_their_own] run setblock ~ ~2 ~ air destroy
kill @s
