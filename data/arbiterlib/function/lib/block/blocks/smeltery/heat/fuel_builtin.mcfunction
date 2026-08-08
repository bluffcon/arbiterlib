execute if items block ~ ~ ~ container.20 #coals run function arbiterlib:lib/block/blocks/smeltery/heat/fuel_control_macro {heat:4,time:200,lossless_time:200,max_reachable:1200,item_control_mode:reduce}

execute if items block ~ ~ ~ container.20 #planks run function arbiterlib:lib/block/blocks/smeltery/heat/fuel_control_macro {heat:1,time:400,lossless_time:400,max_reachable:1200,item_control_mode:reduce}

execute if items block ~ ~ ~ container.20 #logs_that_burn run function arbiterlib:lib/block/blocks/smeltery/heat/fuel_control_macro {heat:1,time:400,lossless_time:600,max_reachable:1200,item_control_mode:reduce}

execute if items block ~ ~ ~ container.20 blaze_rod run function arbiterlib:lib/block/blocks/smeltery/heat/fuel_control_macro {heat:8,time:200,lossless_time:500,max_reachable:1800,item_control_mode:reduce}