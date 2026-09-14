$execute if score @s arbiterlib.block.state.2 matches 1 run function arbiterlib:craft/workbench/craft/button/single/make {namespace:$(namespace),loottable:$(loottable),rarity:$(rarity),max_stack:$(max_stack),count:$(count)}
$execute if score @s arbiterlib.block.state.2 matches 2 run function arbiterlib:craft/workbench/craft/button/stack/make {namespace:$(namespace),loottable:$(loottable),rarity:$(rarity),max_stack:$(max_stack),count:$(count)}

