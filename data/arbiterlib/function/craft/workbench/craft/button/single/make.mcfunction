schedule function arbiterlib:craft/workbench/craft/button/single/sound 1t replace

execute store result score .count arbiterlib.block.workbench.crafting_stack run data get block ~ ~ ~ Items[{Slot:16b}].count
$scoreboard players set .max_count arbiterlib.block.workbench.crafting_stack $(max_stack)


$function arbiterlib:craft/workbench/craft/button/single/iteration {namespace:$(namespace),loottable:$(loottable),rarity:$(rarity),item:$(item),max_stack:$(max_stack)}
