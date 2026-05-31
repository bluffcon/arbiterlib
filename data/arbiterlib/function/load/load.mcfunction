scoreboard objectives add arbiterlib dummy
scoreboard objectives add arbiterlib.settings dummy
scoreboard players set .exists arbiterlib 1

scoreboard objectives add arbiterlib.temp dummy
scoreboard objectives add arbiterlib.state.strength dummy
scoreboard objectives add arbiterlib.state.resistance dummy
scoreboard objectives add arbiterlib.timer dummy
scoreboard objectives add arbiterlib.knowledge dummy

scoreboard objectives add arbiterlib.player dummy
scoreboard objectives add arbiterlib.trigger.ask_server trigger

scoreboard objectives add arbiterlib.block dummy
scoreboard objectives add arbiterlib.block.active dummy
scoreboard objectives add arbiterlib.block.state dummy
scoreboard objectives add arbiterlib.block.state.2 dummy
scoreboard objectives add arbiterlib.block.errors dummy
scoreboard objectives add arbiterlib.block.light dummy

scoreboard objectives add arbiterlib.button.selected dummy

scoreboard objectives add arbiterlib.stats.walk custom:minecraft.walk_one_cm
scoreboard objectives add arbiterlib.block.workbench.crafting_stack dummy


data modify storage arbiterlib:data reload set value {}
function arbiterlib:load/message

function arbiterlib:ticks/quick
function arbiterlib:ticks/regular
function arbiterlib:ticks/redundant
function #arbiterlib:load

execute unless score .reload_notification arbiterlib.settings matches -1 as @a unless entity @s[gamemode=survival] unless entity @s[gamemode=adventure] run function arbiterlib:load/reload

scoreboard players add .reloads arbiterlib.timer 1
scoreboard objectives remove arbiterlib

