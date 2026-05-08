execute if items entity @s container.* *[custom_data~{arbiterlib:{item:"null"}}] run return run kill @s
execute if items entity @s container.* *[custom_data~{arbiterlib:{item:"toggle_workbench_state"}}] run return run kill @s
execute if items entity @s container.* *[custom_data~{arbiterlib:{craft:"uncrafted"}}] run return run kill @s
tag @s add arbiterlib.item.non_null