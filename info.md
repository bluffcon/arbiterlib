
### 
Arbiter automatically shuffles reload messages in its pool and shows a random one (among its own 3 native ones). To add your own just append the text JSON to `arbiterlib:data.reload.messages` like this example:
> `data modify storage arbiterlib:data reload.messages append value [{text:"MY MESSAGE"}]`

> `data modify storage arbiterlib:data reload.messages append value [{text:"Arbiter", color:white}, {text:" - ", color:gray}, {translate:"ui.arbiterlib.my_welcome_message", color: gold}]`


### Custom Blocks
Custom blocks can be registered by having an `item_display` entity with its data property like this
```json
{
    "arbiterlib": {
        "block": {
            "namespace": "arbiterlib",
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

### Buttons
Interaction entities that have a tag and some specific `data` that lets them run functions on press. Quick utility that lets you skip the boring part of interactions!

Buttons should have the `arbiterlib.button` tag. Entity data should be formatted like:
> `{arbiterlib:{entity:"button",select_function:"AAAAA",tap_function:"BBBBB"}}`

Select function is right click (use). Tap function is left click (hit).

### Crafting Recipes
> This is done in Arbiter's **Workbench**: a utility block made with 2 planks and 2 logs.
Crafting works in 2 parts: making a preview item for the player and then making a real one after they click the craft button. These are done in a separate preview function and a separate crafting function. If you wish to have full control over both the preview and result item, you can do that by making 2 separate functions, but Arbiter has a macro that runs both for you at the same time.

Currently Alternative Crafting is not implemented. Please contribute with code or an issue if you have any problems with the Workbench!

### Adding Crafting for your items
`#arbiterlib:craft/workbench` will have functions matching all items in the workbench for all 9 (10) slots, which will then branch out and do everything it needs in the macro function.
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
run return run function arbiterlib:craft/workbench/craft/macro {namespace:"arbiterlib", loottable:"bread_pickaxe",rarity:"common", max_stack: 1, count: 1}
```
> This matches for a pickaxe shape with 3 bread on top.

- **`loottable` points to <namespace>:crafts/<loottable>**
- Rarity is the rarity of the item as a component
- Item is the vanilla Minecraft item that this item is
- Max Stack is the allowed stacking for this item when crafting, not necessarily the stack limit
- To supply output count you need both `count` and a `set_count` loot function 

Alternatively, to make a simple vanilla item without a loot table:
```js
...
run return run function arbiterlib:craft/workbench/craft/macro_vanilla_output \
{namespace:"minecraft", item:"gunpowder", translation:"item.minecraft.gunpowder", model:"gunpowder", max_stack:64, count:1}
```

That's all. You can also skip the macro function and do your own thing! You can have separate preview and craft functions with different loot tables (make sure the custom_data still matches up between them). The function call format is the same, except:

- `#arbiterlib:craft/:workbench_previews` will run `arbiterlib:craft/workbench/craft/found`
- `#arbiterlib::craft/workbench_craft` will run `arbiterlib:craft/workbench/craft/button/make`

Please make sure both are present! If you have a separate preview and craft for this item please don't run the macro!


# Requirements in implementation
**For items:**

Custom Data: must include
- `"arbiterlib": {"namespace":"arbiterlib","id":"workbench"}`

Lore: last line must always include the datapack id in blue text
- `{"translate":"id.arbiterlib", "fallback": "ArbiterLib","color": "blue", "italic": false}`

**For blocks:**
- Blocks are Item Display entities with specific tags and entity data
- Must include the `arbiterlib.block` entity tag
- Data: `{"arbiterlib":{"block":{"namespace":"arbiterlib","function":"arbiterlib:lib/block/blocks/workbench/spawn","drop_loottable": "arbiterlib:blocks/workbench"}}}`
- When breaking, drop by using `function arbiterlib:lib/block/drop with entity @s data.arbiterlib.block` before killing @s.
- Add block ticks to `#arbiterlib:t/block_ticks` and format each line like `execute if entity @s[tag=arbiterlib.block.workbench] run return run function arbiterlib:lib/block/blocks/workbench/tick`
- Give your block the `arbiterlib.block.adjustable_light` tag to let Arbiter detect light changes and update your block's `brightness`

