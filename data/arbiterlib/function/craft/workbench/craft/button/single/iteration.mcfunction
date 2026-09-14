$scoreboard players set .batch_count arbiterlib.block.workbench.crafting_stack $(count)
execute store result entity @s data.arbiterlib.last_batch_count int 1 run scoreboard players get .batch_count arbiterlib.block.workbench.crafting_stack

execute if items block ~ ~ ~ container.16 * run return run function arbiterlib:craft/workbench/craft/button/single/add with block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_data".arbiterlib

execute if score .count arbiterlib.block.workbench.crafting_stack >= .max_count arbiterlib.block.workbench.crafting_stack run return fail

scoreboard players add .count arbiterlib.block.workbench.crafting_stack 1
$loot replace block ~ ~ ~ container.16 loot $(namespace):crafts/$(loottable)
function arbiterlib:craft/workbench/reduce
