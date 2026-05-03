scoreboard players set .count arbiterlib.trigger.ask_server 0
execute as @a run scoreboard players add .count arbiterlib.trigger.ask_server 1
execute if score .count arbiterlib.trigger.ask_server matches 2.. run return run function arbiterlib:load/prompt/outcomes/server

execute store result score .serverask arbiterlib.temp run random value 1..3

execute if score .serverask arbiterlib.temp matches 1 run tellraw @a [{text:" ? [",color:white,bold:false,font:default,underlined:false},{text:"Arbiter",color:"#facf7f",bold:false,font:default,underlined:true,hover_event:{action:"show_text",value:[{text:"Click to open Modrinth page",color:"#e7e3a4"}]},click_event:{action:"open_url",url:"https://modrinth.com/project/arbiterlib"}},{text:"]",color:white,bold:false,font:default,underlined:false}, \
{text:" - ",color:"#57575c",bold:false,font:default,underlined:false}, \
{text:"We've assumed that this world is singleplayer. ",color:white,bold:false,font:default,underlined:false}, \
{text:"Were we right?",color:"#e7e3a4",bold:false,font:default,underlined:false}]
# ---------------------------------------------------------------------------------
execute if score .serverask arbiterlib.temp matches 2 run tellraw @a [{text:" ? [",color:white,bold:false,font:default,underlined:false},{text:"Arbiter",color:"#facf7f",bold:false,font:default,underlined:true,hover_event:{action:"show_text",value:[{text:"Click to open Modrinth page",color:"#e7e3a4"}]},click_event:{action:"open_url",url:"https://modrinth.com/project/arbiterlib"}},{text:"]",color:white,bold:false,font:default,underlined:false}, \
{text:" - ",color:"#57575c",bold:false,font:default,underlined:false}, \
{text:"An educated guess told us you're playing singleplayer. ",color:white,bold:false,font:default,underlined:false}, \
{text:"Were we right?",color:"#e7e3a4",bold:false,font:default,underlined:false}]
# ---------------------------------------------------------------------------------
execute if score .serverask arbiterlib.temp matches 3 run tellraw @a [{text:" ? [",color:white,bold:false,font:default,underlined:false},{text:"Arbiter",color:"#facf7f",bold:false,font:default,underlined:true,hover_event:{action:"show_text",value:[{text:"Click to open Modrinth page",color:"#e7e3a4"}]},click_event:{action:"open_url",url:"https://modrinth.com/project/arbiterlib"}},{text:"]",color:white,bold:false,font:default,underlined:false}, \
{text:" - ",color:"#57575c",bold:false,font:default,underlined:false}, \
{text:"Our sensors delivered that you're not playing on a server. ",color:white,bold:false,font:default,underlined:false}, \
{text:"Were we right?",color:"#e7e3a4",bold:false,font:default,underlined:false}]




tellraw @a [ \
{text:"  - ",color:"#57575c",bold:false,font:default,underlined:false}, \
{text:"Yes",color:green,bold:false,font:default,underlined:true,hover_event:{action:"show_text",value:{text:"Only choose this if your world is really singleplayer!"}},click_event:{action:"run_command",command:"trigger arbiterlib.trigger.ask_server add 1"}}, \
{text:"  | ",color:"#57575c",bold:false,font:default,underlined:false}, \
{text:"No",color:red,bold:false,font:default,underlined:true,hover_event:{action:"show_text",value:{text:"Only choose if this world is really a multiplayer server!"}},click_event:{action:"run_command",command:"trigger arbiterlib.trigger.ask_server add -1"}}, \
]
scoreboard players enable @a arbiterlib.trigger.ask_server

schedule function arbiterlib:load/prompt/test_for_results 10s