function arbiterlib:lib/block/blocks/workbench/work/clear_null
execute if score @s arbiterlib.block.state matches 1 run return run scoreboard players set @s arbiterlib.block.state 2
execute unless score @s arbiterlib.block.state matches 1 run return run scoreboard players set @s arbiterlib.block.state 1