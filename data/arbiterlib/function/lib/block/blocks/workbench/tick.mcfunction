execute unless block ~ ~ ~ barrel run return run function arbiterlib:lib/block/blocks/workbench/break

execute if score @s arbiterlib.block.active matches 1 run stopsound @a block block.barrel.close
execute if block ~ ~ ~ barrel[open=false] run scoreboard players set @s arbiterlib.block.active 0
execute if block ~ ~ ~ barrel[open=true] run scoreboard players set @s arbiterlib.block.active 1

scoreboard players set @s arbiterlib.block.errors 0
execute unless block ~ ~1 ~ #air unless block ~ ~1 ~ crafter unless block ~ ~1 ~ #replaceable positioned ~ ~1.5 ~ run function arbiterlib:lib/block/blocks/workbench/deny
execute if block ~ ~1 ~ crafter unless block ~ ~2 ~ #air unless block ~ ~2 ~ redstone_block positioned ~ ~2.5 ~ run function arbiterlib:lib/block/blocks/workbench/deny

execute if entity @s[tag=arbiterlib.block.adjustable_light] if block ~ ~1 ~ crafter run function arbiterlib:lib/block/blocks/workbench/light/crafter_above
execute if entity @s[tag=!arbiterlib.block.adjustable_light] unless block ~ ~1 ~ crafter run function arbiterlib:lib/block/blocks/workbench/light/enable
execute if entity @s[tag=arbiterlib.block.workbench.vanilla] run function arbiterlib:lib/block/blocks/workbench/light/particle



execute if score @s arbiterlib.block.active matches 1 run return run function arbiterlib:lib/block/blocks/workbench/work/active

function arbiterlib:lib/block/blocks/workbench/work/clear_null
function arbiterlib:lib/block/blocks/workbench/work/clear_others