$execute unless data block ~ ~ ~ Items[{Slot:7b}].components."minecraft:custom_data".arbiterlib{id:$(id)} run return fail

execute if score .count arbiterlib.block.workbench.crafting_stack >= .max_count arbiterlib.block.workbench.crafting_stack run return fail

scoreboard players add .count arbiterlib.block.workbench.crafting_stack 1
item modify block ~ ~ ~ container.16 arbiterlib:add
function arbiterlib:craft/workbench/reduce