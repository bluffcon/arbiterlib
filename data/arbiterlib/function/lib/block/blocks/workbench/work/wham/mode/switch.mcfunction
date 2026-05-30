execute if items block ~ ~ ~ container.23 *[custom_data~{arbiterlib:{item:"craft_button"}}] run item replace block ~ ~ ~ container.23 with air

execute if score @s arbiterlib.block.state.2 matches 2 run return run scoreboard players set @s arbiterlib.block.state.2 1
execute if score @s arbiterlib.block.state.2 matches 1 run return run scoreboard players set @s arbiterlib.block.state.2 2