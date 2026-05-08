tag @s remove arbiterlib.block.workbench.craftable
execute if items block ~ ~ ~ container.16 *[custom_data~{arbiterlib:{craft:"uncrafted"}}] run item replace block ~ ~ ~ container.16 with air