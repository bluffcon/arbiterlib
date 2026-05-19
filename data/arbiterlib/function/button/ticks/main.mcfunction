execute unless entity @p[distance=..10] run return fail
execute if entity @s[type=interaction] run function arbiterlib:button/ticks/interaction
execute if entity @s[type=item_display] run function arbiterlib:button/ticks/item
execute if entity @s[type=text_display] run function arbiterlib:button/ticks/text
