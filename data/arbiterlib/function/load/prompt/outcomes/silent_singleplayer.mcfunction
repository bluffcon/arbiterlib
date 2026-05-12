data modify storage arbiterlib:settings singleplayer set value true
data modify storage arbiterlib:settings server set value false
data modify storage arbiterlib:settings world set value singleplayer
scoreboard players set .is_server arbiterlib.knowledge 0
scoreboard players set .is_singleplayer arbiterlib.knowledge 1