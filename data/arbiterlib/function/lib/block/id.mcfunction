execute unless score . arbiterlib.block matches 1.. run scoreboard players set . arbiterlib.player 1
scoreboard players operation @s arbiterlib.block = . arbiterlib.block
scoreboard players add . arbiterlib.block 1

execute store result storage arbiterlib:temp blockid int 1 run scoreboard players get @s arbiterlib.block
function arbiterlib:lib/block/blockdata with storage arbiterlib:temp