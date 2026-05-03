execute if score .is_singleplayer arbiterlib.knowledge matches 0..1 run return fail
execute if score .is_server arbiterlib.knowledge matches 0..1 run return fail

schedule function arbiterlib:load/prompt/is_this_singleplayer 10s