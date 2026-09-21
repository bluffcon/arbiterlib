$execute if score @s arbiterlib.block.state.2 matches 1 run function arbiterlib:craft/workbench/craft/button_vanilla/single/make {namespace:$(namespace),item:$(item),max_stack:$(max_stack),count:$(count),translation:$(translation),model:$(model)}

$execute if score @s arbiterlib.block.state.2 matches 2 run function arbiterlib:craft/workbench/craft/button_vanilla/stack/make {namespace:$(namespace),item:$(item),max_stack:$(max_stack),count:$(count),translation:$(translation),model:$(model)}

