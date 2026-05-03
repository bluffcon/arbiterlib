function arbiterlib:lib/player/id
execute store result storage arbiterlib:temp player.id int 1 run scoreboard players get @s arbiterlib.player
function arbiterlib:lib/player/data/get_username with storage arbiterlib:temp player

function #arbiterlib:prewelcomes
function arbiterlib:lib/player/welcome with storage arbiterlib:settings welcome
