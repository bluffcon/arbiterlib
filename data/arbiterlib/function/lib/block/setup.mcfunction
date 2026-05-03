execute if entity @n[type=!item_display,distance=..0.7,type=!#arbiterlib:inanimate] run return fail

function arbiterlib:lib/block/id

execute unless data entity @s data.arbiterlib.block run return run function arbiterlib:lib/block/errors/missing
execute unless data entity @s data.arbiterlib.block.namespace run return run function arbiterlib:lib/block/errors/nonamespace
execute unless data entity @s data.arbiterlib.block.function run return run function arbiterlib:lib/block/errors/nofunction

# entity data should be formatted like this:

#   {arbiterlib:
#      {block:
#          {"namespace": "arbiterlib",
#           "function": "arbiterlib:lib/block/blocks/workbench/spawn",
#           "drop_loottable": "arbiterlib:blocks/workbench",
#           "id": "workbench"
#          }
#      }
#   }

# {arbiterlib:{block:{namespace:"arbiterlib",function:"arbiterlib:lib/block/blocks/workbench/spawn","drop_loottable": "arbiterlib:blocks/workbench",id:"workbench"}}}


execute if block ~ ~0.5 ~ #replaceable unless block ~ ~ ~ #replaceable positioned ~ ~1 ~ run return run function arbiterlib:lib/block/shift_1_up

execute unless block ~ ~ ~ #replaceable run return run function arbiterlib:lib/block/drop with entity @s data.arbiterlib.block

function arbiterlib:lib/block/create with entity @s data.arbiterlib.block