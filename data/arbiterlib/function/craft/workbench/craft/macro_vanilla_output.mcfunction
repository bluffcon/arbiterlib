$function arbiterlib:craft/workbench/craft/found_vanilla {namespace:$(namespace),item:$(item),max_stack:$(max_stack),count:$(count),translation:$(translation),model:$(model)}

$execute if entity @s[tag=!arbiterlib.block.workbench.previewing] run function arbiterlib:craft/workbench/craft/button_vanilla/make {namespace:$(namespace),item:$(item),max_stack:$(max_stack),count:$(count),translation:$(translation),model:$(model)}
