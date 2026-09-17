$execute unless data block ~ ~ ~ Items[{Slot:7b}].components."minecraft:custom_data".arbiterlib{id:$(id)} run return fail

execute if score .count arbiterlib.block.workbench.crafting_stack >= .max_count arbiterlib.block.workbench.crafting_stack run return fail

scoreboard players operation .count arbiterlib.block.workbench.crafting_stack += .batch_count arbiterlib.block.workbench.crafting_stack
function arbiterlib:craft/workbench/craft/button/macro_add with entity @s data.arbiterlib

function arbiterlib:craft/workbench/reduce
