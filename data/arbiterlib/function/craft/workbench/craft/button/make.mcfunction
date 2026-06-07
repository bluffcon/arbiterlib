$execute if score @s arbiterlib.block.state.2 matches 1 run function arbiterlib:craft/workbench/craft/button/single/make {namespace:$(namespace),loottable:$(loottable),rarity:$(rarity),item:$(item),max_stack:$(max_stack)}
$execute if score @s arbiterlib.block.state.2 matches 2 run function arbiterlib:craft/workbench/craft/button/stack/make {namespace:$(namespace),loottable:$(loottable),rarity:$(rarity),item:$(item),max_stack:$(max_stack)}

