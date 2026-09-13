
playsound block.stone.place block @a ~ ~0.5 ~ 1 0.8

setblock ~ ~ ~ barrel[facing=up]{CustomName:{translate:"block.arbiterlib.smeltery",fallback:"Smeltery"}}
tag @s add arbiterlib.block.smeltery


scoreboard players set @s arbiterlib.block.smeltery.heat 0
scoreboard players set @s arbiterlib.block.smeltery.heating_process 0
function arbiterlib:lib/block/adjust_light



function arbiterlib:lib/block/cube_size_scale