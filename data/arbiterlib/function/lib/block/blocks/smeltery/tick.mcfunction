execute unless block ~ ~ ~ barrel run return run function arbiterlib:lib/block/blocks/smeltery/break


function arbiterlib:lib/block/blocks/smeltery/heat/heating_tick
execute if score @s arbiterlib.block.smeltery.heating_process matches 1.. run scoreboard players remove @s arbiterlib.block.smeltery.heating_process 1
execute if score @s arbiterlib.block.smeltery.heating_persist_process matches 1.. run scoreboard players remove @s arbiterlib.block.smeltery.heating_persist_process 1

execute unless score @s arbiterlib.block.smeltery.heating_persist_process matches 1.. run function arbiterlib:lib/block/blocks/smeltery/heat/natural_heat_loss

function arbiterlib:lib/block/blocks/smeltery/heat/particles


execute if score @s arbiterlib.block.smeltery.heating_process matches ..0 if items block ~ ~ ~ container.2 * if items block ~ ~ ~ container.20 * run function arbiterlib:lib/block/blocks/smeltery/heat/fuel_main


execute if score @s arbiterlib.block.active matches 1 run stopsound @a block block.barrel.close
execute if block ~ ~ ~ barrel[open=false] run scoreboard players set @s arbiterlib.block.active 0
execute if block ~ ~ ~ barrel[open=true] run scoreboard players set @s arbiterlib.block.active 1

scoreboard players set @s arbiterlib.block.errors 0
execute unless block ~ ~1 ~ #air unless block ~ ~1 ~ #replaceable positioned ~ ~1.5 ~ run function arbiterlib:lib/block/blocks/smeltery/deny



execute if score @s arbiterlib.block.active matches 1 run function arbiterlib:lib/block/blocks/smeltery/work/active
function arbiterlib:craft/main_smeltery


execute unless score @s arbiterlib.block.active matches 1 run function arbiterlib:lib/block/blocks/smeltery/work/clear_null
execute unless score @s arbiterlib.block.active matches 1 run function arbiterlib:lib/block/blocks/smeltery/work/clear_others

