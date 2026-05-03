scoreboard objectives remove arbiterlib.sidebar
scoreboard objectives add arbiterlib.sidebar dummy {text:""}
scoreboard objectives setdisplay sidebar arbiterlib.sidebar
scoreboard players reset * arbiterlib.sidebar

# use this symbol -> "　" for spaces

function #arbiterlib:feature/sidebar_registry
data modify storage arbiterlib:settings sidebar append value {}