schedule function arbiterlib:ticks/regular 2t
execute unless score .regular arbiterlib.timer matches 1..5 run scoreboard players set .regular arbiterlib.timer 1
execute unless score .regular.count arbiterlib.timer matches ..0 run return run scoreboard players remove .regular.count arbiterlib.timer 1
scoreboard players operation .regular.count arbiterlib.timer = .regular arbiterlib.timer


# for functions that can be ran as often as every 2-8 ticks. server admins can override this
function #arbiterlib:t/regular

execute as @a at @s run function arbiterlib:ticks/regular/players
execute as @e[type=item_display,tag=arbiterlib.block] at @s run function arbiterlib:lib/block/tick
scoreboard players add .world arbiterlib.timer 1
execute as @e[type=item] at @s run function arbiterlib:ticks/regular/items
execute if score .special_players arbiterlib.settings matches 1 run function arbiterlib:ticks/regular/special_players
execute as @e[type=#arbiterlib:button_components,tag=arbiterlib.button] at @s run function arbiterlib:button/ticks/main

