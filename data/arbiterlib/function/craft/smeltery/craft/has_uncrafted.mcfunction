execute unless entity @n[type=item_display,tag=arbiterlib.block.workbench,tag=arbiterlib.block.workbench.craftable,distance=..5] run return run clear @s *[custom_data~{arbiterlib:{craft:"uncrafted"}}]
tag @s remove arbiterlib.block.workbench.craftable

function #arbiterlib:craft/make_item {slot:"player.cursor"}

execute at @n[type=item_display,tag=arbiterlib.block.workbench,tag=arbiterlib.block.workbench.craftable] run function arbiterlib:craft/workbench/reduce