scoreboard players set .smeltright arbiterlib.block.workbench.crafting_stack 0
function arbiterlib:craft/smeltery/craft/smelt/test_add with block ~ ~ ~ Items[{Slot:15b}].components."minecraft:custom_data".arbiterlib
$execute if score .smeltright arbiterlib.block.workbench.crafting_stack matches 1 if items block ~ ~ ~ container.15 * run return run function arbiterlib:craft/smeltery/craft/smelt/call_add {consume_heat:$(consume_heat)}

execute if score .smeltcount arbiterlib.block.workbench.crafting_stack >= .smeltmax_count arbiterlib.block.workbench.crafting_stack run return fail

scoreboard players add .smeltcount arbiterlib.block.workbench.crafting_stack 1
$loot replace block ~ ~ ~ container.15 loot $(namespace):smelts/$(loottable)
$scoreboard players remove @s arbiterlib.block.smeltery.heat $(consume_heat)

item modify block ~ ~ ~ container.2 arbiterlib:reduce
