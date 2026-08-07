execute store result score .count arbiterlib.block.workbench.crafting_stack run data get block ~ ~ ~ Items[{Slot:16b}].count
$scoreboard players set .max_count arbiterlib.block.workbench.crafting_stack $(max_stack)
