function arbiterlib:lib/block/blocks/workbench/work/modifiers/slot {slot:0}

function arbiterlib:lib/block/blocks/workbench/work/modifiers/slot {slot:4}
function arbiterlib:lib/block/blocks/workbench/work/modifiers/slot {slot:5}
function arbiterlib:lib/block/blocks/workbench/work/modifiers/slot {slot:6}
function arbiterlib:lib/block/blocks/workbench/work/modifiers/slot {slot:7}
function arbiterlib:lib/block/blocks/workbench/work/modifiers/slot {slot:8}

execute unless items block ~ ~ ~ container.9 * run item replace block ~ ~ ~ container.9 with knowledge_book[rarity="common",tooltip_display={hide_tooltip:true},item_model="arbiterlib:recipe_book",custom_data={arbiterlib:{item:"null"}}]

function arbiterlib:lib/block/blocks/workbench/work/modifiers/slot {slot:13}

execute unless items block ~ ~ ~ container.14 * run item replace block ~ ~ ~ container.14 with knowledge_book[rarity="common",tooltip_display={hide_tooltip:false},item_model="arbiterlib:craft_button",custom_data={arbiterlib:{item:"null"}},item_name={translate:"ui.arbiterlib.craft",fallback:"Ingredients on the left, output on the right",color:gray,italic:false}]
function arbiterlib:lib/block/blocks/workbench/work/modifiers/slot {slot:15}
function arbiterlib:lib/block/blocks/workbench/work/modifiers/slot {slot:17}

function arbiterlib:lib/block/blocks/workbench/work/modifiers/slot {slot:22}
function arbiterlib:lib/block/blocks/workbench/work/modifiers/slot {slot:23}
function arbiterlib:lib/block/blocks/workbench/work/modifiers/slot {slot:24}
function arbiterlib:lib/block/blocks/workbench/work/modifiers/slot {slot:25}


execute unless items block ~ ~ ~ container.26 * run item replace block ~ ~ ~ container.26 with knowledge_book[rarity="common",tooltip_display={hide_tooltip:true},item_model="arbiterlib:slot_ring",custom_data={arbiterlib:{item:"null"}}]
execute if items block ~ ~ ~ container.26 *[custom_data~{arbiterlib:{item:null}}] run item replace block ~ ~ ~ container.26 with knowledge_book[rarity="common",tooltip_display={hide_tooltip:true},item_model="arbiterlib:slot_ring",custom_data={arbiterlib:{item:"null"}}]
