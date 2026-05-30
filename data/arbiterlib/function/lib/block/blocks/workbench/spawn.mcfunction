title @a[distance=..7] actionbar {"text":"This feature is beta and will not work"}

playsound block.wood.place block @a ~ ~0.5 ~ 1 0.8

setblock ~ ~ ~ barrel[facing=up]{CustomName:{translate:"block.arbiterlib.workbench",fallback:"Workbench"}}
tag @s add arbiterlib.block.workbench

scoreboard players set @s arbiterlib.block.state 1
scoreboard players set @s arbiterlib.block.state.2 1
function arbiterlib:lib/block/adjust_light