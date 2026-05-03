scoreboard players set blockcount arbiterlib.temp 0
execute as @e[type=item_display,distance=..0.6] run scoreboard players add blockcount arbiterlib.temp 1
execute if score blockcount arbiterlib.temp matches 2.. run return run function arbiterlib:lib/block/drop with entity @s data.arbiterlib.block

$function $(function)


