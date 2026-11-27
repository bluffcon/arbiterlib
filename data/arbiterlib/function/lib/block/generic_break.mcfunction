execute as @e[type=item,distance=..2] if items entity @s container.* barrel[custom_name] run kill @s
execute as @e[type=item,distance=..2] if items entity @s container.* knowledge_book[custom_data] run kill @s
stopsound @a * entity.item.pickup
function arbiterlib:lib/block/drop with entity @s data.arbiterlib.block
kill @s