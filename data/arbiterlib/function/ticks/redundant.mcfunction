schedule function arbiterlib:ticks/redundant 20t
execute unless score .redundant arbiterlib.timer matches 1.. run scoreboard players set .redundant arbiterlib.timer 5
execute unless score .redundant.count arbiterlib.timer matches ..0 run return run scoreboard players remove .redundant.count arbiterlib.timer 1

function #arbiterlib:t/redundant
execute as @e[type=item_display,tag=arbiterlib.block] at @s run function arbiterlib:lib/block/redundant_ticks
execute as @a run function arbiterlib:ticks/redundant/players
execute if score .sidebar arbiterlib.settings matches 1 run function arbiterlib:lib/ui/sidebar/main

scoreboard players operation .redundant.count arbiterlib.timer = .redundant arbiterlib.timer