scoreboard players set .count arbiterlib.trigger.ask_server 0
execute as @a run scoreboard players add .count arbiterlib.trigger.ask_server 1
execute if score .count arbiterlib.trigger.ask_server matches 2.. run return run function arbiterlib:load/prompt/outcomes/server
execute if score .count arbiterlib.trigger.ask_server matches 0 run return run function arbiterlib:load/prompt/outcomes/server

execute as @a unless score @s arbiterlib.trigger.ask_server matches -1..1 run return run schedule function arbiterlib:load/prompt/test_for_results 10s

execute as @a if score @s arbiterlib.trigger.ask_server matches 1 run return run function arbiterlib:load/prompt/outcomes/singleplayer
execute as @a if score @s arbiterlib.trigger.ask_server matches -1 run return run function arbiterlib:load/prompt/outcomes/server

