function #arbiterlib:t/regular/players

execute if score @s arbiterlib.stats.walk matches 1.. run advancement grant @s only arbiterlib:move
clear @s *[custom_data~{arbiterlib:{item:null}}]
execute if items entity @s player.cursor *[custom_data~{arbiterlib:{item:toggle_workbench_state}}] run function arbiterlib:lib/block/blocks/workbench/work/toggle/player
execute if items entity @s player.cursor *[custom_data~{arbiterlib:{item:toggle_workbench_mode}}] run function arbiterlib:lib/block/blocks/workbench/work/wham/mode/pick
execute if items entity @s player.cursor *[custom_data~{arbiterlib:{item:craft_button}}] run function arbiterlib:lib/block/blocks/workbench/work/wham/craft/pick
clear @s *[custom_data~{arbiterlib:{item:toggle_workbench_state}}]
clear @s *[custom_data~{arbiterlib:{item:craft_button}}]
clear @s barrel[custom_name={fallback:"Workbench",translate:"block.arbiterlib.workbench"}]
