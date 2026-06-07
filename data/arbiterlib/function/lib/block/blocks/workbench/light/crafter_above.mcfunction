function arbiterlib:lib/block/blocks/workbench/light/disable

execute store result score .rotrandom arbiterlib.temp run random value 1..4
execute if score .rotrandom arbiterlib.temp matches 1 run setblock ~ ~1 ~ crafter[orientation=down_north]{lock:{components:{custom_data:{arbiterlib:{item:cant_get_this}}}}} replace
execute if score .rotrandom arbiterlib.temp matches 2 run setblock ~ ~1 ~ crafter[orientation=down_east]{lock:{components:{custom_data:{arbiterlib:{item:cant_get_this}}}}} replace
execute if score .rotrandom arbiterlib.temp matches 3 run setblock ~ ~1 ~ crafter[orientation=down_south]{lock:{components:{custom_data:{arbiterlib:{item:cant_get_this}}}}} replace
execute if score .rotrandom arbiterlib.temp matches 4 run setblock ~ ~1 ~ crafter[orientation=down_west]{lock:{components:{custom_data:{arbiterlib:{item:cant_get_this}}}}} replace


playsound entity.dragon_fireball.explode block @a ~ ~ ~ 0.6 2
playsound block.anvil.use block @a ~ ~ ~ 0.6 1
particle dust{color:16717591,scale:3} ~0.5 ~1 ~ 0 0 0.25 0 20
particle dust{color:16717591,scale:3} ~ ~1 ~0.5 0.25 0 0 0 20
particle dust{color:16717591,scale:3} ~-0.5 ~1 ~ 0 0 0.25 0 20
particle dust{color:16717591,scale:3} ~ ~1 ~-0.5 0.25 0 0 0 20