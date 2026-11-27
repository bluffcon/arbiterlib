scoreboard players set . arbiterlib.player 1

function #arbiterlib:first_time_join
execute if score .world arbiterlib.timer matches 5.. run return fail

function arbiterlib:load/prompt/outcomes/silent_singleplayer

function #arbiterlib:singleplayer_first_time_playing