function #arbiterlib:craft/make_item {slot:"hotbar.0"}
execute at @n[type=item_display,tag=arbiterlib.block.workbench,tag=arbiterlib.block.workbench.craftable] run function arbiterlib:craft/workbench/reduce

