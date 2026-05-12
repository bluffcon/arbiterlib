execute store result storage arbiterlib:data reload.count int 1 run data get storage arbiterlib:data reload.messages
execute store result score .reload_message_count arbiterlib.knowledge run data get storage arbiterlib:data reload.messages

playsound entity.player.levelup ui @s ~ ~ ~ 0.6 1.8 0.3
function arbiterlib:load/reload_message_macro1 with storage arbiterlib:data reload