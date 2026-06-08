function arbiterlib:craft/workbench/vanilla/put
function arbiterlib:craft/workbench/reduce
function arbiterlib:craft/workbench/dummy

tag @s remove arbiterlib.block.workbench.brought_their_own
execute if block ~ ~2 ~ redstone_block run tag @s add arbiterlib.block.workbench.brought_their_own

execute unless entity @s[tag=arbiterlib.block.workbench.brought_their_own] run setblock ~ ~2 ~ redstone_block
execute unless entity @s[tag=arbiterlib.block.workbench.brought_their_own] run setblock ~ ~2 ~ air
execute if entity @s[tag=arbiterlib.block.workbench.brought_their_own] run setblock ~ ~2 ~ air
execute if entity @s[tag=arbiterlib.block.workbench.brought_their_own] run setblock ~ ~2 ~ redstone_block

data modify block ~ ~1 ~ crafting_ticks_remaining set value 1
schedule function arbiterlib:craft/workbench/dummy_schedule 6t
schedule function arbiterlib:craft/workbench/vanilla/fail_return 7t

