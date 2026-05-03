execute if entity @s[type=player] if entity @p run return run function arbiterlib:errors/neverplayer
$scoreboard players set .argument arbiterlib.temp $(y)

execute store result score .motion_y arbiterlib.temp run data get entity @s Motion[1] 100
scoreboard players operation .motion_y arbiterlib.temp += .argument arbiterlib.temp
execute store result storage arbiterlib:temp motion_y double 0.01 run scoreboard players get .motion_y arbiterlib.temp
data modify entity @s Motion[1] set from storage arbiterlib:temp motion_y