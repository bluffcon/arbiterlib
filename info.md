If your datapack requires the world to be strictly singleplayer or multiplayer, add this in your `load` function:
> `schedule function arbiterlib:load/prompt/is_this_singleplayer 180s replace`

> It will ask the player if their world is really singleplayer. But automatic detection should be enough unless it really is that critical!

> Doesn't take into account the ability to start LAN worlds and in 26.2-s7 will become ultimately useless and unreliable


Arbiter automatically shuffles reload messages in its pool and shows a random one (among its own 3 native ones). To add your own just append the text JSON to `arbiterlib:data.reload.messages` like this example:
> `data modify storage arbiterlib:data reload.messages append value [{text:"MY MESSAGE"}]`

> `data modify storage arbiterlib:data reload.messages append value [{text:"Arbiter", color:white}, {text:" - ", color:gray}, {translate:"ui.arbiterlib.my_welcome_message", color: gold}]`


(experimental) Arbitered Sidebar~! Works like the welcome above but has bugs and limits. Currently hardcoded but you can add new entries
> `scoreboard players set .sidebar arbiterlib.settings 1` to enable

> Add function to `#arbiterlib:feature/sidebar_registry`, there have a structure like:

> `data modify storage arbiterlib:data sidebar.entries append value {score:8,name:"§c:　ArbiterLib"}`

> Name is the spaceless player name to show, score is the score that will be set (14 is top, 2 is bottom). 16 entries total max. Uses section sign colors