tag @s add arbiterlib.block.adjustable_light
tag @s remove arbiterlib.block.workbench.vanilla
playsound entity.zombie.break_wooden_door block @a ~ ~ ~ 0.6 1.3
execute positioned ~ ~1.5 ~ run function arbiterlib:lib/particle/box/with_color_scale_count {color:16717591,scale:1.5,count:20}