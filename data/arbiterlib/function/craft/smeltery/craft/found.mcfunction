
$execute if score @s arbiterlib.block.smeltery.heat matches $(needed_heat).. run function arbiterlib:craft/smeltery/craft/smelt/unpreview


execute if items block ~ ~ ~ container.6 * unless items block ~ ~ ~ container.6 knowledge_book run return fail

$loot replace block ~ ~ ~ container.6 loot $(namespace):smelts/$(loottable)
function arbiterlib:craft/smeltery/book_anticheat
 
item modify block ~ ~ ~ container.6 {function:set_custom_data,tag:{arbiterlib:{item: "null"}}}
$item modify block ~ ~ ~ container.6 {function:set_lore, lore:[[{"translate":"ui.arbiterlib.preview_item", color:white,italic:true}], [{"translate":"ui.arbiterlib.required_heat_craft", color:white,italic:true}, {"text":"$(needed_heat)", color:gold,italic:true}, {"translate":"ui.arbiterlib.closing_bracket", color:white,italic:true}]], mode:"append"}
item modify block ~ ~ ~ container.6 {function:set_components,components:{rarity:common}}
tag @s add arbiterlib.block.smeltery.smeltable
function arbiterlib:lib/block/blocks/smeltery/work/fill_ring_preview

