$function arbiterlib:craft/workbench/craft/found {namespace:$(namespace),loottable:$(loottable),rarity:$(rarity),item:$(item),max_stack:$(max_stack)}
$execute if entity @s[tag=!arbiterlib.block.workbench.previewing] run function arbiterlib:craft/workbench/craft/button/make {namespace:$(namespace),loottable:$(loottable),rarity:$(rarity),item:$(item),max_stack:$(max_stack)}
