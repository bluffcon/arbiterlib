execute if score @s arbiterlib.block.smeltery.heat matches 1..200 run return run particle dust{color:855310,scale:1} ~ ~1 ~ 0.12 0 0.12 0.01 2


execute if score @s arbiterlib.block.smeltery.heat matches 200..400 run particle dust{color:2367259,scale:1.1} ~ ~1 ~ 0.1 0 0.1 0.045 4


execute if score @s arbiterlib.block.smeltery.heat matches 400..600 run particle dust{color:3222569,scale:1.2} ~ ~1 ~ 0.1 0 0.1 0.1 5
execute if score @s arbiterlib.block.smeltery.heat matches 400..600 run particle dust{color:4661262,scale:1} ~ ~1 ~ 0.1 0 0.1 0.1 2


execute if score @s arbiterlib.block.smeltery.heat matches 600..800 run particle dust{color:2891286,scale:1.3} ~ ~1 ~ 0.1 0 0.1 0.15 8
execute if score @s arbiterlib.block.smeltery.heat matches 600..800 run particle dust{color:5379598,scale:1.1} ~ ~1 ~ 0.1 0 0.1 0.15 3
execute if score @s arbiterlib.block.smeltery.heat matches 600..800 run particle dust{color:11360780,scale:1.3} ~ ~1 ~ 0.1 0.1 0.1 0.15 2


execute if score @s arbiterlib.block.smeltery.heat matches 800..1000 run particle dust{color:3218191,scale:1.3} ~ ~1 ~ 0.1 0 0.1 0.15 5
execute if score @s arbiterlib.block.smeltery.heat matches 800..1000 run particle dust{color:7213574,scale:1.4} ~ ~1 ~ 0.1 0 0.1 0.15 6
execute if score @s arbiterlib.block.smeltery.heat matches 800..1000 run particle dust{color:16423433,scale:1.4} ~ ~1 ~ 0.1 0.3 0.1 0.3 4
execute if score @s arbiterlib.block.smeltery.heat matches 800..1000 if predicate arbiterlib:random/50 run particle lava ~ ~1 ~ 0.1 0 0.1 0.15 1


execute if score @s arbiterlib.block.smeltery.heat matches 1000..1200 run particle dust{color:3479561,scale:1.4} ~ ~1 ~ 0.15 0 0.15 0.2 5
execute if score @s arbiterlib.block.smeltery.heat matches 1000..1200 run particle dust{color:10237469,scale:1.3} ~ ~1 ~ 0.1 0.2 0.1 0.3 6
execute if score @s arbiterlib.block.smeltery.heat matches 1000..1200 run particle dust{color:16759594,scale:1.6} ~ ~1 ~ 0.1 0.3 0.1 0.35 4
execute if score @s arbiterlib.block.smeltery.heat matches 1000..1200 if predicate arbiterlib:random/50 run particle lava ~ ~1 ~ 0.1 0 0.1 0.15 1


execute if score @s arbiterlib.block.smeltery.heat matches 1200..1400 run particle dust{color:1444099,scale:1.4} ~ ~1 ~ 0.3 0 0.3 0.2 10
execute if score @s arbiterlib.block.smeltery.heat matches 1200..1400 run particle dust{color:4135689,scale:1.4} ~ ~1 ~ 0.15 0 0.15 0.2 5
execute if score @s arbiterlib.block.smeltery.heat matches 1200..1400 run particle dust{color:12075299,scale:1.3} ~ ~1 ~ 0.1 0.2 0.1 0.4 6
execute if score @s arbiterlib.block.smeltery.heat matches 1200..1400 run particle dust{color:16763969,scale:1.6} ~ ~1.2 ~ 0.1 0.5 0.1 0.6 4
execute if score @s arbiterlib.block.smeltery.heat matches 1200..1400 if predicate arbiterlib:random/50 run particle lava ~ ~1 ~ 0.1 0 0.1 0.15 2


execute if score @s arbiterlib.block.smeltery.heat matches 1400..1600 run particle dust{color:459521,scale:1.4} ~ ~1 ~ 0.3 0.1 0.3 0.3 10
execute if score @s arbiterlib.block.smeltery.heat matches 1400..1600 run particle dust{color:5907466,scale:1.4} ~ ~1 ~ 0.15 0.2 0.15 0.2 5
execute if score @s arbiterlib.block.smeltery.heat matches 1400..1600 run particle dust{color:13722652,scale:1.3} ~ ~1 ~ 0.1 0.3 0.1 0.4 8
execute if score @s arbiterlib.block.smeltery.heat matches 1400..1600 run particle dust{color:16765267,scale:1.6} ~ ~1.2 ~ 0.1 0.5 0.1 0.8 8
execute if score @s arbiterlib.block.smeltery.heat matches 1400..1600 if predicate arbiterlib:random/50 run particle lava ~ ~1 ~ 0.1 0 0.1 0.15 2
execute if score @s arbiterlib.block.smeltery.heat matches 1400..1600 as @a[distance=..1] run damage @s 0.2 in_fire


execute if score @s arbiterlib.block.smeltery.heat matches 1600..1800 run particle dust{color:131328,scale:1.9} ~ ~1 ~ 0.3 0.2 0.3 0.35 17
execute if score @s arbiterlib.block.smeltery.heat matches 1600..1800 run particle dust{color:12143894,scale:1.6} ~ ~1.1 ~ 0.15 0.2 0.15 0.2 9
execute if score @s arbiterlib.block.smeltery.heat matches 1600..1800 run particle dust{color:15503141,scale:1.4} ~ ~1.1 ~ 0.1 0.3 0.1 0.4 8
execute if score @s arbiterlib.block.smeltery.heat matches 1600..1800 run particle dust{color:16771362,scale:1.5} ~ ~1.5 ~ 0.1 0.6 0.1 0.8 5
execute if score @s arbiterlib.block.smeltery.heat matches 1600..1800 run particle lava ~ ~1 ~ 0.1 0 0.1 0.15 1
execute if score @s arbiterlib.block.smeltery.heat matches 1600..1800 as @a[distance=..2] run damage @s 0.2 in_fire


execute if score @s arbiterlib.block.smeltery.heat matches 1800..2000 run particle dust{color:0,scale:2.1} ~ ~1 ~ 0.3 0.2 0.3 0.35 21
execute if score @s arbiterlib.block.smeltery.heat matches 1800..2000 run particle dust{color:14177814,scale:1.9} ~ ~1.1 ~ 0.15 0.2 0.15 0.2 16
execute if score @s arbiterlib.block.smeltery.heat matches 1800..2000 run particle dust{color:16566303,scale:1.7} ~ ~1.1 ~ 0.1 0.3 0.1 0.4 11
execute if score @s arbiterlib.block.smeltery.heat matches 1800..2000 run particle dust{color:16776420,scale:1.4} ~ ~1.7 ~ 0.1 0.7 0.1 0.8 7
execute if score @s arbiterlib.block.smeltery.heat matches 1800..2000 run particle lava ~ ~1 ~ 0.1 0 0.1 0.6 3
execute if score @s arbiterlib.block.smeltery.heat matches 1800..2000 as @a[distance=..2] run damage @s 0.5 in_fire

