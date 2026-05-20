# when no button has been pressed yet
execute as @n[distance=..1,type=text_display] unless score @s arbiterlib.button.selected matches 1..2 run return run function arbiterlib:button/messages/explanation

# run functions based on the selected outcome. these aren't that important to this example
execute as @n[distance=..1,type=text_display,tag=arbiterlib.button.type.2at] if score @s arbiterlib.button.selected matches 1 at @s run function arbiterlib:button/example/2_around_text/tap/1
execute as @n[distance=..1,type=text_display,tag=arbiterlib.button.type.2at] if score @s arbiterlib.button.selected matches 2 at @s run function arbiterlib:button/example/2_around_text/tap/2

# effects
playsound block.fire.extinguish block @a ~ ~ ~ 0.2 1
execute at @n[distance=..1,type=text_display] run setblock ~ ~ ~ air

# kills them all
execute at @n[distance=..1,type=text_display,tag=arbiterlib.button.type.2at] run kill @e[type=#arbiterlib:button_components,distance=..2,tag=arbiterlib.button,sort=nearest]