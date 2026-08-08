

execute if score .smeltcount arbiterlib.block.workbench.crafting_stack >= .smeltmax_count arbiterlib.block.workbench.crafting_stack run return fail
scoreboard players add .smeltcount arbiterlib.block.workbench.crafting_stack 1

item modify block ~ ~ ~ container.15 arbiterlib:add
item modify block ~ ~ ~ container.2 arbiterlib:reduce
