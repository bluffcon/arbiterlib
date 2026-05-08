function arbiterlib:lib/block/blocks/workbench/work/clear_null
function arbiterlib:craft/workbench/craft/no_recipe
execute if score @s arbiterlib.block.state matches 1 if entity @s[tag=arbiterlib.block.workbench.hide_alternative_info] run return run scoreboard players set @s arbiterlib.block.state 2
execute unless score @s arbiterlib.block.state matches 1 run return run scoreboard players set @s arbiterlib.block.state 1
execute if score @s arbiterlib.block.state matches 1 if entity @s[tag=!arbiterlib.block.workbench.hide_alternative_info] run return run function arbiterlib:lib/block/blocks/workbench/work/toggle/button/make_info_once