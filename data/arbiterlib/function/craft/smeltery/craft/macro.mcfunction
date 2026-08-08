$function arbiterlib:craft/smeltery/craft/found {namespace:$(namespace),loottable:$(loottable),max_stack:$(max_stack),needed_heat:$(needed_heat),consume_heat:$(consume_heat)}
$execute if entity @s[tag=!arbiterlib.block.smeltery.preview] run function arbiterlib:craft/smeltery/craft/smelt/make {namespace:$(namespace),loottable:$(loottable),max_stack:$(max_stack),needed_heat:$(needed_heat),consume_heat:$(consume_heat)}

