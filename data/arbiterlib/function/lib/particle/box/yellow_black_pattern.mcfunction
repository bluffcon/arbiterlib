scoreboard players remove .particle_yellowblack arbiterlib.temp 1
execute if score .particle_yellowblack arbiterlib.temp matches ..0 run scoreboard players set .particle_yellowblack arbiterlib.temp 20

execute if score .particle_yellowblack arbiterlib.temp matches 11.. run function arbiterlib:lib/particle/box/with_color_scale_count {color:15982915,scale:0.4,count:35}
execute if score .particle_yellowblack arbiterlib.temp matches ..10 run function arbiterlib:lib/particle/box/with_color_scale_count {color:4337717,scale:0.4,count:35}

