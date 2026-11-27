# Conventions

To stay a ecosystem, Arbiter includes a set of conventions for features. They can be mandatory (you're required to follow them) and voluntary (it's best that you follow them, but it's not required).

Following these will be better for you and the end user, because conventions make sure everything is where it needs to be.

> It's recommended to use **VSCode** and the **Datapack Helper Plus by Spyglass** extension for developing with ArbiterLib, as well as having basic datapack knowledge before starting a project

# Items

## Mandatory
1. Custom items should have a loot table. All items are defined as loot table `json`s. All items should have these components: `custom_data`, `item_name`, `item_model`, `lore`

2. The item's loot table should have the loot table tag `#arbiterlib:items`

3. Items must have a `custom_data` component that includes custom item id and namespace of the datapack adding it like so:
```json
"custom_data": {
    "arbiterlib": {
        "id": "workbench",
        "namespace": "arbiterlib"
    }
}
```

4. Last line of lore in items should be the datapack name. It should either be blue non-italic text, or have a custom font. If using regular text, it should be a translation string pointing to `id.<namespace>`

## Voluntary

1. Items should have a description that explains what the item is in their lore.

2. Appending information to the lore of items should leave the datapack name line untouched. This must be respected unless the item is added by your own datapack

## Recognized common item IDs
Since Arbiter doesn't have tags for custom items, the solution is to give your items a common `id` that will be used by other packs.

<details>
<summary>List of common ids (collapsible)</summary>

- `water` - for ingredients that are expected to be water
- `lava` - for ingredients that are expected to be lava
- `workbench` - for crafting table-like workbenches


- `salt` - salt


- `command_slip` - for Command Slips from Directive

</details>

3. An item id can be shared if the several items are similar enough (eg. Directive slips all share an id and namespace)

# Crafting

## Mandatory
1. Loot tables for custom item outputs should be formatted like `<namespace>:crafts/<item>` in the `loot_table` folder. Items must have these components defined: `item_name`, `item_model`

2. Managed crafting recipes are function files tagged with `#arbiterlib:craft/workbench`. This will let ArbiterLib use your single recipe for both the preview and the crafting.

3. Recipes are a function call with a macro and a condition that matches 9 slots in the workbench. Precisely slots `1, 2, 3, 10, 11, 12, 19, 20, 21`

4. Managed crafting recipes call `arbiterlib:craft/workbench/craft/macro` at the end with macro arguments `namespace` (datapack namespace for output item), `loottable` (loot table pointing to `<namespace>:crafts/<item>`), `rarity` (output item rarity), `max_stack` (max item stack) and `count` (outputted amount per craft, must match the outputted item count of the loot table)
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
run return run function arbiterlib:craft/workbench/craft/macro \
{namespace: "arbiterlib", loottable: "bread_pickaxe", rarity: "common", max_stack: 1, count: 1}
```

5. If you don't need managed crafting, call `arbiterlib:craft/workbench/craft/found` for displaying the preview separately and `arbiterlib:craft/workbench/craft/button/make` for the crafting output with the same macro arguments. This must be done for items that have a separate crafting condition, and the crafting condition must be displayed in the item lore. **Two loot tables that return different items from these functions should always fully match the `custom_data` component**

6. Crafting conditions must be put before the datapack name lore line and should be formatted like so:
```json
"lore": [
    {
        "translate": "ui.arbiterlib.crafting_conditions",
        "color": "red",
        "bold": true,
        "italic": false
    },
    {
        "translate": "ui.<namespace>.<item>.condition",
        "color": "red",
        "bold": false,
        "italic": false
    },
]
```

7. To make recipes that don't output a loot table item, call `arbiterlib:craft/workbench/craft/macro_vanilla_output` with arguments `namespace` (modid that adds this item), `item` (from `<namespace>:<item>`), `translation` (item translation string), `model` (from `<namespace>:<model>`), `max_stack` (max amount this item stacks to), `count` (added amount of item per craft)
```js
run return run function arbiterlib:craft/workbench/craft/macro_vanilla_output \
{namespace: "minecraft", item: "gunpowder", translation: "item.minecraft.gunpowder", model: "gunpowder", max_stack: 64, count: 1}
```
8. If your item should not show up as a viewable recipe in ArbiterJEI, include a `hide: "true"` macro argument in the function call. This will not automatically hide the item from the JEI item list however, as that is controlled by `#arbiterlib:items` loot table tag.

9. Matching ingredients is split into vanilla and Arbiter items. Vanilla items simply match the id (eg. `stick`, `bread`). For Arbiter items you should never match the vanilla item id, only the Arbiter id or id & namespace like so:
```js
if items block ~ ~ ~ container.1 *[custom_data~{arbiterlib:{id:"salt"}}]
    // Matching a common id of the item to allow any salt

if items block ~ ~ ~ container.2 *[custom_data~{arbiterlib:{id:"crystal_supersword"}}]
    // For niche items it makes even less sense to match the namespace, so you shouldn't

if items block ~ ~ ~ container.3 *[custom_data~{arbiterlib:{id:"net", namespace:"autofisher"}}]
    // When the id is vague and you need a specific item, you should match the namespace
```

10. Empty slots are matched with `unless items *`

# Smelting

## Mandatory
1. Loot tables for custom item outputs should be formatted like `<namespace>:smelts/<item>` in the `loot_table` folder. Items must have these components defined: `item_name`, `item_model`

2. Smelting recipes are function files tagged with `#arbiterlib:craft/smeltery`. Unlike crafting, they're not separated into preview and output.

3. Recipes are a function call with a macro and a condition that matches slot 2 in the smeltery. In the macro it matches for current heat and subtracts some from the value.

4. Smelting recipes call `arbiterlib:craft/smeltery/craft/macro` at the end with macro arguments `namespace` (datapack namespace for output item), `loottable` (loot table pointing to `<namespace>:smelts/<item>`), `max_stack` (max item stack), `needed_heat` (the threshold the heat value must reach before the item smelts), `consume_heat` (amount of heat to consume after smelting, should be less than needed heat)
```js
execute \
if items block ~ ~ ~ container.2 clay_ball \
run return run function arbiterlib:craft/smeltery/craft/macro \
{namespace: "arbiterlib", loottable: "brick", max_stack: 64, needed_heat: 400, consume_heat: 100}
```

# Blocks

## Voluntary

1. Blocks are item display entities tagged with `arbiterlib.block` entity tag. It will automatically add Smithed tags for you.

2. Blocks should have a block base of either a motion blocking block or an invisible silent invulnerable Shulker

3. It is best that you block item is a spawn egg with several pre-set values in its `entity_data` component. The `entity_data` must include a `Tags` and `data` field on the entities:
```json
"entity_data": {
    "data": {
        "arbiterlib": {
            "block": {
                "namespace": "arbiterlib",
                "function": "arbiterlib:lib/block/blocks/workbench/spawn",
                "drop_loottable": "arbiterlib:blocks/workbench",
                "id": "workbench"
            }
        }
    },
    "Tags": ["arbiterlib.block", "arbiterlib.block.adjustable_light"]
}
```

4. The block entity's `data` has these fields inside of `arbiterlib.block`: `namespace` (datapack namespace which adds the block), `function` (function to run when the block is freshly spawned), `drop_loottable` (loot table to summon as loot when the block couldn't be placed or was destroyed), `id` (the id of this block entity)

5. The spawn function should include these commands. A sound of placement, a setblock command (for your motion-blocking block base), mandatory tag (to let the ticking function know what block this is), and two function calls (`adjust_light` if you have the `arbiterlib.block.adjustable_light` entity tag which lets Arbiter automatically manage light for your block, and `cube_size_scale` if your block is a cube model)
```js
playsound block.wood.place block @a ~ ~0.5 ~ 1 0.8

setblock ~ ~ ~ barrel[facing=up]{CustomName:{translate:"block.arbiterlib.workbench"}}
tag @s add arbiterlib.block.workbench

function arbiterlib:lib/block/adjust_light
function arbiterlib:lib/block/cube_size_scale
```

6. Your datapack should have a level `regular` ticking function with `blocks` sublevel (a function tagged as `#arbiterlib:t/regular/blocks`) in which you will have separate lines for ticking your blocks. The tag selector should match your own block entity tag and the function should be of your own.
```ruby
execute as @s[tag=arbiterlib.block.workbench] run return run function arbiterlib:lib/block/blocks/workbench/tick
```

7. A block's separate ticking function should include this line as the first line, where `barrel` is your chosen block base. If your block base isn't a barrel, you will need to create your own break function.
```js
execute unless block ~ ~ ~ barrel run return run function arbiterlib:lib/block/generic_break
```

8. Break functions should be formatted like this. First goes custom behavior (if any), then killing an item matching the block base, running the drop function (spawns loot defined in the entity data), then killing the entity. Don't forget to kill associated entities.
```ruby
execute if block ~ ~1 ~ crafter run setblock ~ ~1 ~ air destroy
execute if block ~ ~2 ~ redstone_block if entity @s[tag=arbiterlib.block.workbench.brought_their_own] run setblock ~ ~2 ~ air destroy

execute as @e[type=item,distance=..2] if items entity @s container.* <BLOCK_BASE> run kill @s
function arbiterlib:lib/block/drop with entity @s data.arbiterlib.block
kill @s
```

# Entities

No conventions


# Data

## Mandatory

1. Scoreboard objectives should have a prefix and understandable description, eg. `arbiterlib.math` or `autofisher.net.owner_id`

2. Entity tags should have a prefix and understandable description, eg. `arbiterlib.block` or `autofisher.block.net`

3. Data storage should be of your own, unless `arbiterlib:temp`. For any other persistent data, please create your own storage like `<namespace>:<use>`, eg. `autofisher:custom_fishing`

4. Datapacks are very encouraged to use Arbiter's shared ticking functions. By using Arbiter's load and ticking functions you can fully omit the need of the user making sure the datapacks have a specific order.

5. Load functions should be tagged with `#arbiterlib:load`, and that is where all the scoreboard objectives should be created.

6. Arbiter has 4 tick levels, `quick` (every 1t), `regular` (every 4t), `frequent` (every 20t), `redundant` (default every 5 seconds, modifiable per world by changing `.redundant`'s score in `arbiterlib.timer` objective). Each tick has an associated function tag, `#arbiterlib:t/<level>`, as well as a sublevel that already selected every player, `#arbiterlib:t/<level>/players`. `regular` and `redundant` have additional block tick sublevels, `#arbiterlib:t/regular/blocks` and `#arbiterlib:t/redundant/blocks`, they run as Arbiter blocks.

7. 



# Language

## Mandatory

1. There should be a lang entry of the datapack name, `id.<namespace>` and `id.<namespace>.short`
```json
{
    "id.arbiterlib": "ArbiterLib",
    "id.arbiterlib.short": "Arbiter"
}
```

2. `pack.mcmeta`'s description should have datapack name, a short description, version number (if you're using the official template, the build script can substitute all `[×VER×]` with version number, eg. `r10`), and credits.
```
Final structure (example):
    ArbiterLib: A Datapack Library r30 | by bluffcon
    ^ name      ^ description      ^ vers   ^ credits
```

3. Translation strings should follow a pattern like `<category>.<namespace>.<item>.<purpose>.<count>`, for example:
```json
{
    "item.<namespace>.<item>": "Apple Item",
    "item.<namespace>.<item>.description.1": "This is a possible ",
    "item.<namespace>.<item>.description.2": "item description.",

    "mcmeta.arbiterlib.1": "ArbiterLib",
    "mcmeta.arbiterlib.2": "A Datapack Library",

    "enchantment.<namespace>.<name>": "Blazing",

    "ui.autofisher.bait": "Bait",
    "ui.<namespace>.<item>": "Shared Language Line"
}
```

## Voluntary

1. The `pack.mcmeta` file should be translated, separating name, description, and credits into different fields


# Other

## Mandatory

1. ArbiterLib and its dependants should always be on the latest version of Minecraft. As soon as a new drop/update comes out, the previous versions become obsolete and won't get updates.

2. [Join the Discord](https://discord.gg/wczBNd8qVE) to get updates on changes in these conventions

## Voluntary

1. Functions that can be used by others via a macro with values should start with `with_` or have that in the name for context. For example, in ArbiterLib:
```
/function arbiterlib:lib/particle/sphere/radius_2/with_color_scale_count {color: -1,scale: 4,count: 1}
Function states all the arguments it needs in the name

/function arbiterlib:m/explode/creeper_with_power {power: 10}
/execute as @n[type=husk] run function arbiterlib:m/motion/add_y_with_y {y: 10}
Function states the one argument it needs in its name, as well as what it does
```

2. Functions that can be run manually can be marked with `<namespace>:m/` to mean **m**anual use. Functions marked with `<namespace>:lib/` should only be used if you know what you're doing, or if you're following a guide.