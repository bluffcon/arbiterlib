scoreboard players set . arbiterlib.player 1

data modify storage arbiterlib:settings welcome.message set value [{fallback:" ┌ [","translate":"ui.arbiterlib.bracket.alt_open",color:white,bold:false,font:default,underlined:false},{translate:"id.arbiterlib.short",color:"#facf7f",bold:false,font:default,underlined:true,hover_event:{action:"show_text",value:[{translate:"ui.arbiterlib.modrinth_link",fallback:"Click to open Modrinth page",color:"#e7e3a4"}]},click_event:{action:"open_url",url:"https://modrinth.com/project/arbiterlib"}},{text:"]",color:white,bold:false,font:default,underlined:false},{text:" - ",color:"#57575c",bold:false,font:default,underlined:false},{translate:"ui.arbiterlib.fwelcome.0",color:white,bold:false,font:default,underlined:false,fallback:""},{fallback:"Welcome",color:"#e7e3a4",bold:false,font:default,underlined:false,translate:"ui.arbiterlib.fwelcome.1"},{fallback:" to this world!",color:white,bold:false,font:default,underlined:false,translate:"ui.arbiterlib.fwelcome.2"},]
data modify storage arbiterlib:settings welcome.title set value {"fallback":"Welcome!",translate:"ui.arbiterlib.welcome",color:"#facf7f"}

function #arbiterlib:first_time_join
execute if score .world arbiterlib.timer matches 5.. run return fail

function arbiterlib:load/prompt/outcomes/silent_singleplayer

function #arbiterlib:singleplayer_first_time_playing