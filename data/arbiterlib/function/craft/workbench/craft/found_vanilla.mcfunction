execute if items block ~ ~ ~ container.7 * unless items block ~ ~ ~ container.7 knowledge_book run return fail

item modify block ~ ~ ~ container.7 {type:set_item,item:knowledge_book}
item modify block ~ ~ ~ container.7 {type:set_custom_data,tag:{arbiterlib:{item: "null"}}}
item modify block ~ ~ ~ container.7 {type:set_lore, lore:[[{"translate":"ui.arbiterlib.preview_item", color:white,italic:true}]], mode:"append"}
$item modify block ~ ~ ~ container.7 {type:set_components,components:{item_model:$(model), item_name:{translate:"$(translation)"},tooltip_display:{}}}
tag @s add arbiterlib.block.workbench.craftable
function arbiterlib:lib/block/blocks/workbench/work/fill_ring_preview