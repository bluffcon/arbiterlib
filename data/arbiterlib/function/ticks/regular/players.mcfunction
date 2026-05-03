execute if score @s arbiterlib.stats.walk matches 1.. run advancement grant @s only arbiterlib:move
clear @s *[custom_data~{arbiterlib:{item:null}}]
execute if items entity @s player.cursor *[custom_data~{arbiterlib:{item:toggle_workbench_state}}] run function arbiterlib:lib/block/blocks/workbench/work/toggle/player
clear @s *[custom_data~{arbiterlib:{item:toggle_workbench_state}}]
clear @s barrel[custom_name={fallback:"Workbench",translate:"block.arbiterlib.workbench"}]
function #arbiterlib:t/regular/players