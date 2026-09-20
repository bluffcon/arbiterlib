function arbiterlib:craft/workbench/craft/no_recipe
tag @s add arbiterlib.block.workbench.previewing
execute at @s run function arbiterlib:craft/workbench/count_items with entity @s data.arbiterlib
function #arbiterlib:craft/workbench
function #arbiterlib:craft/workbench_previews
tag @s remove arbiterlib.block.workbench.previewing
