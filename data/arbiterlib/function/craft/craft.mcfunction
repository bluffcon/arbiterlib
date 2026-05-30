execute as @s[tag=arbiterlib.block.workbench] if score @s arbiterlib.block.state matches 1 run return run function arbiterlib:craft/workbench/craft/button/main
execute as @s[tag=arbiterlib.block.workbench] if score @s arbiterlib.block.state matches 2 run return run function arbiterlib:craft/workbench/alt/button/main

