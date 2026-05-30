clear @s *[custom_data~{arbiterlib:{item:toggle_workbench_mode}}]
playsound block.lever.click ui @s ~ ~ ~ 0.6 1.5

execute as @n[type=item_display,scores={arbiterlib.block.active=1}] at @s run function arbiterlib:lib/block/blocks/workbench/work/wham/mode/switch