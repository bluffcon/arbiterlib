data modify storage arbiterlib:temp vanilla_craft.Items set value [{}, {}, {}, {}, {}, {}, {}, {}, {}]

data modify storage arbiterlib:temp vanilla_craft.Items[0] set from block ~ ~ ~ Items[{Slot:1b}]
data modify storage arbiterlib:temp vanilla_craft.Items[1] set from block ~ ~ ~ Items[{Slot:2b}]
data modify storage arbiterlib:temp vanilla_craft.Items[2] set from block ~ ~ ~ Items[{Slot:3b}]
data modify storage arbiterlib:temp vanilla_craft.Items[3] set from block ~ ~ ~ Items[{Slot:10b}]
data modify storage arbiterlib:temp vanilla_craft.Items[4] set from block ~ ~ ~ Items[{Slot:11b}]
data modify storage arbiterlib:temp vanilla_craft.Items[5] set from block ~ ~ ~ Items[{Slot:12b}]
data modify storage arbiterlib:temp vanilla_craft.Items[6] set from block ~ ~ ~ Items[{Slot:19b}]
data modify storage arbiterlib:temp vanilla_craft.Items[7] set from block ~ ~ ~ Items[{Slot:20b}]
data modify storage arbiterlib:temp vanilla_craft.Items[8] set from block ~ ~ ~ Items[{Slot:21b}]

data modify storage arbiterlib:temp vanilla_craft.Items[0].Slot set value 0b
data modify storage arbiterlib:temp vanilla_craft.Items[1].Slot set value 1b
data modify storage arbiterlib:temp vanilla_craft.Items[2].Slot set value 2b
data modify storage arbiterlib:temp vanilla_craft.Items[3].Slot set value 3b
data modify storage arbiterlib:temp vanilla_craft.Items[4].Slot set value 4b
data modify storage arbiterlib:temp vanilla_craft.Items[5].Slot set value 5b
data modify storage arbiterlib:temp vanilla_craft.Items[6].Slot set value 6b
data modify storage arbiterlib:temp vanilla_craft.Items[7].Slot set value 7b
data modify storage arbiterlib:temp vanilla_craft.Items[8].Slot set value 8b


data modify block ~ ~1 ~ Items set value []
data modify block ~ ~1 ~ Items set from storage arbiterlib:temp vanilla_craft.Items