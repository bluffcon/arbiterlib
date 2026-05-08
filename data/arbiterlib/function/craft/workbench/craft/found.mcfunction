$loot replace block ~ ~ ~ container.16 loot $(namespace):crafts/$(loottable)
item modify block ~ ~ ~ container.16 {function:set_item,item:knowledge_book}
item modify block ~ ~ ~ container.16 {function:set_custom_data,tag:{arbiterlib:{craft:"uncrafted"}}}
$item modify block ~ ~ ~ container.16 {function:set_components,components:{rarity:$(rarity)}}
tag @s add arbiterlib.block.workbench.craftable