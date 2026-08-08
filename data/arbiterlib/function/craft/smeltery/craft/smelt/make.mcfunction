
execute store result score .smeltcount arbiterlib.block.workbench.crafting_stack run data get block ~ ~ ~ Items[{Slot:15b}].count
$scoreboard players set .smeltmax_count arbiterlib.block.workbench.crafting_stack $(max_stack)


$function arbiterlib:craft/smeltery/craft/smelt/iteration {namespace:$(namespace),loottable:$(loottable),max_stack:$(max_stack),needed_heat:$(needed_heat),consume_heat:$(consume_heat)}