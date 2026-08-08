

function arbiterlib:craft/smeltery/craft/smelt/add with block ~ ~ ~ Items[{Slot:15b}].components."minecraft:custom_data".arbiterlib
$scoreboard players remove @s arbiterlib.block.smeltery.heat $(consume_heat)