execute unless block ~ ~ ~ barrel run return run function arbiterlib:lib/block/blocks/workbench/break

execute if score @s arbiterlib.block.active matches 1 run stopsound @a block block.barrel.close
execute if block ~ ~ ~ barrel[open=false] run scoreboard players set @s arbiterlib.block.active 0
execute if block ~ ~ ~ barrel[open=true] run scoreboard players set @s arbiterlib.block.active 1

scoreboard players set @s arbiterlib.block.errors 0
execute unless block ~ ~1 ~ #air positioned ~ ~1.5 ~ run function arbiterlib:lib/block/blocks/workbench/deny
execute unless block ~ ~2 ~ #air positioned ~ ~2.5 ~ run function arbiterlib:lib/block/blocks/workbench/deny

execute if score @s arbiterlib.block.active matches 1 run function arbiterlib:lib/block/blocks/workbench/work/active

