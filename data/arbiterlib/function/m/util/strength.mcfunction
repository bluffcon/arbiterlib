execute if entity @s[predicate=arbiterlib:has/strength] run return run function arbiterlib:m/util/etc/disable_strength
effect give @s strength infinite 100 true
scoreboard players set @s arbiterlib.state.strength 1