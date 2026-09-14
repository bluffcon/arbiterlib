schedule function arbiterlib:ticks/regular 4t


# for functions that are regular constant jobs
function #arbiterlib:t/regular

execute as @a at @s run function arbiterlib:ticks/regular/players
execute as @e[type=item_display,tag=arbiterlib.block] at @s run function arbiterlib:lib/block/tick
scoreboard players add .world arbiterlib.timer 1
execute as @e[type=item] at @s run function arbiterlib:ticks/regular/items
execute if score .special_players arbiterlib.settings matches 1 run function arbiterlib:ticks/regular/special_players
execute as @e[type=#arbiterlib:button_components,tag=arbiterlib.button] at @s run function arbiterlib:button/ticks/main

