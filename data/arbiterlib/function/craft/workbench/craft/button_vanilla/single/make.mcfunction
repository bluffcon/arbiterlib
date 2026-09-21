schedule function arbiterlib:craft/workbench/craft/button_vanilla/single/sound 1t replace

execute store result score .count arbiterlib.block.workbench.crafting_stack run data get block ~ ~ ~ Items[{Slot:16b}].count
$scoreboard players set .max_count arbiterlib.block.workbench.crafting_stack $(max_stack)


$function arbiterlib:craft/workbench/craft/button_vanilla/single/iteration {namespace:$(namespace),item:$(item),max_stack:$(max_stack),count:$(count),translation:$(translation),model:$(model)}
