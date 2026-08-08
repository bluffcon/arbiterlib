execute if score @s arbiterlib.block.smeltery.heating_process matches 0 if score @s arbiterlib.block.smeltery.heat matches 0 run return run function arbiterlib:lib/block/blocks/smeltery/work/ui/burnmeter_empty

execute if score @s arbiterlib.block.smeltery.heating_process matches 0 run return run function arbiterlib:lib/block/blocks/smeltery/work/ui/burnmeter_heat

execute store result entity @s data.arbiterlib.smeltery.burntime int 1 run scoreboard players get @s arbiterlib.block.smeltery.heating_process
function arbiterlib:lib/block/blocks/smeltery/work/ui/burnmeter_full with entity @s data.arbiterlib.smeltery