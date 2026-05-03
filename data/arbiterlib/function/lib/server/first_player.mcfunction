scoreboard players set . arbiterlib.player 1

data modify storage arbiterlib:settings welcome.message set value [{text:" ┌ [",color:white,bold:false,font:default,underlined:false},{text:"Arbiter",color:"#facf7f",bold:false,font:default,underlined:true,hover_event:{action:"show_text",value:[{text:"Click to open Modrinth page",color:"#e7e3a4"}]},click_event:{action:"open_url",url:"https://modrinth.com/project/arbiterlib"}},{text:"]",color:white,bold:false,font:default,underlined:false},{text:" - ",color:"#57575c",bold:false,font:default,underlined:false},{text:"Welcome",color:"#e7e3a4",bold:false,font:default,underlined:false},{text:" to this world!",color:white,bold:false,font:default,underlined:false},]
data modify storage arbiterlib:settings welcome.title set value {"text":"Welcome!",color:"#facf7f"}

function #arbiterlib:first_time_join
execute if score .world arbiterlib.timer matches 5.. run return fail

# ask if this is really singleplayer - feel free to clear in your functions
schedule function arbiterlib:load/prompt/schedule_ask 180s replace
function #arbiterlib:singleplayer_first_time_playing