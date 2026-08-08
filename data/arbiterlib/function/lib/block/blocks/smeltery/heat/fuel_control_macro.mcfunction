$item modify block ~ ~ ~ container.20 arbiterlib:$(item_control_mode)
$scoreboard players set @s arbiterlib.block.smeltery.heating_process $(time)
$scoreboard players set @s arbiterlib.block.smeltery.heating_max $(max_reachable)
$scoreboard players set @s arbiterlib.block.smeltery.heating_stack $(heat)
$scoreboard players set @s arbiterlib.block.smeltery.heating_persist_process $(lossless_time)

execute if score @s arbiterlib.block.active matches 1 run playsound item.firecharge.use ui @a[distance=..5] ~ ~ ~ 1