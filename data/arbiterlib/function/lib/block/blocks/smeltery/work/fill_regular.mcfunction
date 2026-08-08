function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:0}
function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:1}

function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:3}
function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:4}
function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:5}
function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:6}
function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:7}
function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:8}

execute unless items block ~ ~ ~ container.9 * run item replace block ~ ~ ~ container.9 with knowledge_book[rarity="common",tooltip_display={hide_tooltip:true},item_model="arbiterlib:recipe_book",custom_data={arbiterlib:{item:"null"}}]


function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:12}

execute unless items block ~ ~ ~ container.13 * run item replace block ~ ~ ~ container.13 with knowledge_book[rarity="common",tooltip_display={hide_tooltip:false},item_model="arbiterlib:craft_button",custom_data={arbiterlib:{item:"null"}},item_name={translate:"ui.arbiterlib.smelt",color:gray,italic:false}]
function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:14}

#execute unless items block ~ ~ ~ container.15 * run item replace block ~ ~ ~ container.15 with knowledge_book[rarity="common",tooltip_display={hide_tooltip:true},item_model="minecraft:air",custom_data={arbiterlib:{item:"null"}},item_name=""]

function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:16}
function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:17}
function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:18}
function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:19}

function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:24}
function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:21}
function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:24}
function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:22}
function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:23}

execute unless items block ~ ~ ~ container.25 * run item replace block ~ ~ ~ container.25 with knowledge_book[rarity="common",tooltip_display={hide_tooltip:true},item_model="arbiterlib:slot_ring",custom_data={arbiterlib:{item:"null"}}]
execute if items block ~ ~ ~ container.25 *[custom_data~{arbiterlib:{item:null}}] run item replace block ~ ~ ~ container.25 with knowledge_book[rarity="common",tooltip_display={hide_tooltip:true},item_model="arbiterlib:slot_ring",custom_data={arbiterlib:{item:"null"}}]


function arbiterlib:lib/block/blocks/smeltery/work/modifiers/slot {slot:26}