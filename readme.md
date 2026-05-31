# ArbiterLib ⚙️
**Arbiter** is my personal Minecraft datapack development library. It makes some things easier for those who wish to use it!
- Built-in QOL like first-time greetings for server members and new worlds
- Commands for quick actions like applying y-motion, quick heads, instakills, etc.
- Custom block registry and centralized custom crafting and smelting (wip)!!!
- Player data storage, id bound, for storing and retrieving anything persistent
- Customizable ticking times set by the admin, grouped together by necessity of the action

Star this repo!! ⭐⭐⭐⭐⭐⭐

## Using Arbiter:
- Use the Arbiter tick system:
> `#arbiterlib:t/quick` for tick intervals, `#arbiterlib:t/regular` for simple jobs, `#arbiterlib:t/redundant` for things that should happen once in sometimes. Feel free to expand by adding your own ticks to `#arbiterlib:load`
- Use Arbiter's entity tags, like excluding `#arbiterlib:inanimate` to search for living entities
- Use Arbiter's `arbiterlib:player` score id system, from which you can access player data by using a macro on `arbiterlib:player_data` storage
- Load your own effects in `#arbiterlib:welcomes` and say hi to private worlds in `#arbiterlib:singleplayer_first_time_playing`
- Add your message to the pool of random reload messages for server admins\

> For the rest of info, please visit the `info.md` file

### Custom Blocks
Custom blocks can be registered by having an `item_display` entity with its data property like this
```json
{"arbiterlib":
   {"block":
       {"namespace": "arbiterlib",
        "function": "arbiterlib:lib/block/blocks/workbench/spawn",
        "drop_loottable": "arbiterlib:blocks/workbench",
        "id": "workbench"
       }
   }
}
```
The entity must also include the `arbiterlib.block` tag to be detected
Then in your `function` you play the sound, place the block, play your effects. In `drop_loottable` specify the loottable that gives your item.

### Particle Shapes
Arbiter has some presets for shapes made out of particles. You need to use a macro with all necessary data to make a shape, the data required is in the function name.
**Considerations:**
- Particle shapes are EXTREMELY laggy, especially the more complex the math gets. They are meant to be played as one-shot effects rather than a constant trail. A single command block running the sphere (radius 2) command every tick can increase the servers MSPT by 8 (a LOT!!!) since its running 20000 commands every second
- The circle shape is rotated with the player and uses `^ ^ ^` coordinates, which is how the sphere shape is generated. You can make sphere-like shapes yourself alongside other curves just by using the circle tool

# Requirements in implementation
**For items:**

Custom Data: must include
- `"arbiterlib": {"namespace":"arbiterlib","id":"workbench"}`

Lore: last line must always include the datapack namespace in blue text
- `{"translate":"id.arbiterlib", "fallback": "ArbiterLib","color": "blue", "italic": false}`

**For blocks:**
- Blocks are Item Display entities with specific tags and entity data
- Must include the `arbiterlib.block` entity tag
- Data: `{"arbiterlib":{"block":{"namespace":"arbiterlib","function":"arbiterlib:lib/block/blocks/workbench/spawn","drop_loottable": "arbiterlib:blocks/workbench"}}}`
- When breaking, drop by using `function arbiterlib:lib/block/drop with entity @s data.arbiterlib.block` before killing @s.
- Add block ticks to `#arbiterlib:t/block_ticks` and format each line like `execute if entity @s[tag=arbiterlib.block.workbench] run return run function arbiterlib:lib/block/blocks/workbench/tick`
- Give your block the `arbiterlib.block.adjustable_light` tag to let Arbiter detect light changes and update your block's `brightness`

### Crafting Recipes (BETA)
> This is done in Arbiter's **Workbench**: a utility block made with 2 planks and 2 logs.
Crafting works in 2 parts: making a preview item for the player and then making a real one after they click the craft button. These are done in a separate preview function and a separate crafting function. If you wish to have full control over both the preview and result item, you can do that by making 2 separate functions, but Arbiter has a macro that runs both for you at the same time.

Currently Alternative Crafting is not implemented. Please contribute with code or an issue if you have any problems with the Workbench!

### Adding Crafting for your items
`#arbiterlib:workbench` will have functions matching all items in the workbench for all 9 (10) slots, which will then branch out and do everything it needs in the macro function.
```js
execute \
if items block ~ ~ ~ container.1 bread \
if items block ~ ~ ~ container.2 bread \
if items block ~ ~ ~ container.3 bread \
\
unless items block ~ ~ ~ container.10 * \
if items block ~ ~ ~ container.11 stick \
unless items block ~ ~ ~ container.12 * \
\
unless items block ~ ~ ~ container.19 * \
if items block ~ ~ ~ container.20 stick \
unless items block ~ ~ ~ container.21 * \
\
run return run function arbiterlib:craft/workbench/craft/macro {namespace:"arbiterlib",item:"bread_pickaxe", loottable:"bread_pickaxe",rarity:"common",item:"stone_pickaxe",max_stack:1}
```
> This matches for a pickaxe shape with 3 bread on top.

- **`loottable` points to <namespace>:crafts/<loottable>**
- Rarity is the rarity of the item as a component
- Item is the vanilla Minecraft item that this item is
- Max Stack is the allowed stacking for this item when crafting, not necessarily the stack limit

That's all. You can also skip the macro function and do your own thing! You can have separate preview and craft functions with different loot tables (make sure the custom_data still matches up between them). The function call format is the same, except:

- `#arbiterlib:workbench_previews` will run `arbiterlib:craft/workbench/craft/found`
- `#arbiterlib:workbench_craft` will run `arbiterlib:craft/workbench/craft/button/make`

Please make sure both are present! If you have a separate preview and craft for this item please don't run the macro!


### To-do
- Alternative Crafting
- Plan out a future turn-based RPG pvp/pve minigame for Arbiter dependants (?)

## About Arbiter
Arbiter could make things easier for you, but could also make them take more time depending on how you work. You're free to use it or not use it! Open an issue if you have thoughts on how to improve Arbiter or if you found an error within this code
> Arbiter includes some heavy self-branding like putting its name in the reloads, having a default welcome message, etc. Don't be discouraged from using Arbiter because of this! Chances are, this exact name brought you here, making you interested in this library yourself. Most of these things can be overridden with an addon to Arbiter or configured to never show up by a server admin. We only want the name of the Arbiter to be heard loud and clear! Thank you for reading!