execute if entity @s[predicate=arbiterlib:has/resistance] run return run function arbiterlib:m/util/etc/disable_resistance
effect give @s resistance infinite 4 true
scoreboard players set @s arbiterlib.state.resistance 1