schedule function arbiterlib:ticks/regular 2t
execute unless score .regular arbiterlib.timer matches 1.. run scoreboard players set .regular arbiterlib.timer 3
execute unless score .regular.count arbiterlib.timer matches ..0 run return run scoreboard players remove .regular.count arbiterlib.timer 1


# for functions that can be ran as often as every 2 ticks and every second. server admins can override this
function #arbiterlib:t/regular
execute as @a at @s run function arbiterlib:ticks/regular/players
execute as @e[type=item_display,tag=arbiterlib.block] at @s run function arbiterlib:lib/block/tick
scoreboard players add .world arbiterlib.timer 1
execute as @e[type=item] at @s run function arbiterlib:ticks/regular/items


scoreboard players operation .regular arbiterlib.timer = .regular arbiterlib.timer