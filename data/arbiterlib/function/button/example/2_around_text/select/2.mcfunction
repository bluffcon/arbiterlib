# this runs when you select the music disc

# do nothing if already selected (optional!)
execute if score @n[distance=..1,type=text_display,tag=arbiterlib.button.type.2at] arbiterlib.button.selected matches 2 run return fail

### important
# conventionally, change the brightness of the selected button to full and fully dim the unselected one
data modify entity @n[distance=..1,tag=arbiterlib.button.type.2at.2] brightness set value {block:15,sky:15}
execute as @n[distance=..2,tag=arbiterlib.button.type.2at.1] run data modify entity @s brightness set value {block:0,sky:0}

# change the text of the text display to show its state
data modify entity @n[distance=..1,type=text_display,tag=arbiterlib.button.type.2at] text set value "Play a tune!"
scoreboard players set @n[distance=..1,type=text_display,tag=arbiterlib.button.type.2at] arbiterlib.button.selected 2


particle trial_spawner_detection_ominous ~ ~-0.5 ~ 0.2 0.2 0.2 0 10
playsound block.resin.place ui @a ~ ~ ~ 1 1.2

# rotate it a bit :D
execute as @n[tag=arbiterlib.button.rotate] at @s run rotate @s ~-10 ~