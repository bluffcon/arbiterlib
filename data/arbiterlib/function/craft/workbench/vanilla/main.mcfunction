function arbiterlib:craft/workbench/vanilla/put
function arbiterlib:craft/workbench/reduce
function arbiterlib:craft/workbench/dummy
setblock ~ ~2 ~ redstone_block
setblock ~ ~2 ~ air
data modify block ~ ~1 ~ crafting_ticks_remaining set value 1
schedule function arbiterlib:craft/workbench/dummy_schedule 6t
schedule function arbiterlib:craft/workbench/vanilla/fail_return 7t

