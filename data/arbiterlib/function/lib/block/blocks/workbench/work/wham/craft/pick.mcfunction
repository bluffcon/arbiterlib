clear @s *[custom_data~{arbiterlib:{item:craft_button}}]

execute as @n[type=item_display,scores={arbiterlib.block.active=1}] at @s run function arbiterlib:lib/block/blocks/workbench/work/wham/craft/do