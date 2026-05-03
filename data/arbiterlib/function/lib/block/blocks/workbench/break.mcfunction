execute as @e[type=item,distance=..1,limit=1] if items entity @s container.* barrel run kill @s
execute as @e[type=item,distance=..2] if items entity @s container.* knowledge_book run kill @s
stopsound @a * entity.item.pickup
function arbiterlib:lib/block/drop with entity @s data.arbiterlib.block
kill @s
