
execute if data block ~ ~ ~ Items[{Slot:20b}].components."minecraft:custom_data".arbiterlib.fuel run return run function arbiterlib:lib/block/blocks/smeltery/heat/fuel_custom

execute if items block ~ ~ ~ container.20 #arbiterlib:smeltery_fuels run function arbiterlib:lib/block/blocks/smeltery/heat/fuel_builtin
