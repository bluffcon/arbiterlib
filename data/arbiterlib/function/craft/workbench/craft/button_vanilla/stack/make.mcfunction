schedule function arbiterlib:craft/workbench/craft/button/stack/sound 1t replace
execute if items block ~ ~ ~ container.16 * if entity @s[tag=arbiterlib.block.workbench.failure] run return fail

$execute if entity @s[tag=!arbiterlib.block.workbench.stack] run function arbiterlib:craft/workbench/craft/button_vanilla/stack/first {max_stack:$(max_stack)}
execute if score .count arbiterlib.block.workbench.crafting_stack >= .max_count arbiterlib.block.workbench.crafting_stack run return fail
tag @s add arbiterlib.block.workbench.stack


$function arbiterlib:craft/workbench/craft/button_vanilla/stack/iteration {namespace:$(namespace),item:$(item),max_stack:$(max_stack),count:$(count),translation:$(translation),model:$(model)}
function arbiterlib:craft/workbench/craft/button/main
function arbiterlib:craft/workbench/craft/main

