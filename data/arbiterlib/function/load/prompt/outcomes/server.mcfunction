data modify storage arbiterlib:settings server set value true
data modify storage arbiterlib:settings singleplayer set value false
data modify storage arbiterlib:settings world set value server
scoreboard players set .is_server arbiterlib.knowledge 1
scoreboard players set .is_singleplayer arbiterlib.knowledge 0

tellraw @a [{text:" ┌ [",color:white,bold:false,font:default,underlined:false},{text:"Arbiter",color:"#facf7f",bold:false,font:default,underlined:true,hover_event:{action:"show_text",value:[{text:"Click to open Modrinth page",color:"#e7e3a4"}]},click_event:{action:"open_url",url:"https://modrinth.com/project/arbiterlib"}},{text:"]",color:white,bold:false,font:default,underlined:false}, \
{text:" - ",color:"#57575c",bold:false,font:default,underlined:false}, \
{text:"You are ",color:white,bold:false,font:default,underlined:false}, \
{text:"a server!",color:"#e7e3a4",bold:false,font:default,underlined:false}]
playsound entity.player.levelup ui @s ~ ~ ~ 0.6 1.8 0.1