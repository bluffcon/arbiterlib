#scoreboard players set .temp.smeltery_anticheat.rename arbiterlib.temp 0
execute if score @s arbiterlib.block.active matches 0 run return run item modify block ~ ~ ~ container.6 {type:set_item,item:knowledge_book}


#execute unless data block ~ ~ ~ Items[{Slot:6b}].components."minecraft:item_name" run data modify block ~ ~ ~ Items[{Slot:6b}].components."minecraft:item_name"[] set string block ~ ~ ~ Items[{Slot:6b}].id
#execute unless data block ~ ~ ~ Items[{Slot:6b}].components."minecraft:item_model" run data modify block ~ ~ ~ Items[{Slot:6b}].components."minecraft:item_model" set string block ~ ~ ~ Items[{Slot:6b}].id


item modify block ~ ~ ~ container.6 {type:set_item,item:knowledge_book}

