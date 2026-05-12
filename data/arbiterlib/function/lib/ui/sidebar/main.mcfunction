scoreboard objectives remove arbiterlib.sidebar
scoreboard objectives add arbiterlib.sidebar dummy {text:""}
scoreboard objectives setdisplay sidebar arbiterlib.sidebar
scoreboard players reset * arbiterlib.sidebar
data modify storage arbiterlib:data sidebar set value {}

# use this symbol -> "　" for big spaces and this -> " " for small spaces
# use this symbol -> "§" for colors

# §a - green         §b - aqua         §c - red
# §d - light purple  §e - yellow       §f - white
# §0 - black         §1 - dark blue    §2 - dark green
# §3 - dark aqua     §4 - dark red     §5 - dark purple
# §6 - gold          §7 - gray         §8 - dark gray
# §9 - blue          §k - obfuscated   §l - bold
# §m - strikethrough §n - underline    §o - italic

# §r - reset


data modify storage arbiterlib:data sidebar.entries append value {score:16,name:"§6§l:　　>>>　　　　　ᴀʀʙɪᴛᴇʀʟɪʙ　　　　　<<<"}
data modify storage arbiterlib:data sidebar.entries append value {score:15,name:"　"}
data modify storage arbiterlib:data sidebar.entries append value {score:2,name:"　　"}
data modify storage arbiterlib:data sidebar.entries append value {score:1,name:"§l:§r　　　§7modrinth.com/project/§eᴀʀʙɪᴛᴇʀʟɪʙ"}
data modify storage arbiterlib:data sidebar.entries append value {score:0,name:"　　　"}

execute store result storage arbiterlib:temp placed_blocks int 1 run scoreboard players get .count.placed_blocks_total arbiterlib.knowledge
function arbiterlib:lib/ui/sidebar/work/macro_register with storage arbiterlib:temp


function #arbiterlib:feature/sidebar_registry



function arbiterlib:lib/ui/sidebar/work/main