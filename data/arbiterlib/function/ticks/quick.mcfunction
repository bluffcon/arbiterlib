schedule function arbiterlib:ticks/quick 1t
function #arbiterlib:t/quick


# for functions that HAVE to be ran every tick and server admins cant override this
execute as @e[type=item_display,tag=arbiterlib.block] at @s run function arbiterlib:ticks/quick/blocks
execute as @a at @s run function #arbiterlib:t/quick/players