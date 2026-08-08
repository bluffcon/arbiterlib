
execute store result storage arbiterlib:temp heat.heat int 1 run scoreboard players get @s arbiterlib.block.smeltery.heat
execute store result storage arbiterlib:temp heat.persist int 1 run scoreboard players get @s arbiterlib.block.smeltery.heating_persist_process

execute if score @s arbiterlib.block.smeltery.heat matches 0 run data modify storage arbiterlib:temp heat.level set value 0
execute if score @s arbiterlib.block.smeltery.heat matches 1..200 run data modify storage arbiterlib:temp heat.level set value 1
execute if score @s arbiterlib.block.smeltery.heat matches 200..400 run data modify storage arbiterlib:temp heat.level set value 200
execute if score @s arbiterlib.block.smeltery.heat matches 400..800 run data modify storage arbiterlib:temp heat.level set value 400
execute if score @s arbiterlib.block.smeltery.heat matches 800..1200 run data modify storage arbiterlib:temp heat.level set value 800
execute if score @s arbiterlib.block.smeltery.heat matches 1200..1600 run data modify storage arbiterlib:temp heat.level set value 1200
execute if score @s arbiterlib.block.smeltery.heat matches 1600..2000 run data modify storage arbiterlib:temp heat.level set value 1600
execute if score @s arbiterlib.block.smeltery.heat matches 2000.. run data modify storage arbiterlib:temp heat.level set value 2000


function arbiterlib:lib/block/blocks/smeltery/heat/ui/set_heatmeter with storage arbiterlib:temp heat