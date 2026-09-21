$scoreboard players set .batch_count arbiterlib.block.workbench.crafting_stack $(count)
execute store result entity @s data.arbiterlib.last_batch_count int 1 run scoreboard players get .batch_count arbiterlib.block.workbench.crafting_stack

$execute if items block ~ ~ ~ container.16 * run return run function arbiterlib:craft/workbench/craft/button_vanilla/single/add {namespace:$(namespace),item:$(item),max_stack:$(max_stack),count:$(count),translation:$(translation),model:$(model)}

execute if score .count arbiterlib.block.workbench.crafting_stack >= .max_count arbiterlib.block.workbench.crafting_stack run return fail

scoreboard players operation .count arbiterlib.block.workbench.crafting_stack += .batch_count arbiterlib.block.workbench.crafting_stack
$item replace block ~ ~ ~ container.16 with $(item) $(count)
function arbiterlib:craft/workbench/reduce


