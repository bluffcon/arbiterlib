function arbiterlib:craft/workbench/dummy

data modify storage arbiterlib:temp vanilla_craft.copyitems set from block ~ ~1 ~ Items
data modify storage arbiterlib:temp vanilla_craft.Items set value [{}, {}, {}, {}, {}, {}, {}, {}, {}]

data modify storage arbiterlib:temp vanilla_craft.Items[0] set from storage arbiterlib:temp vanilla_craft.copyitems[{Slot:0b}]
data modify storage arbiterlib:temp vanilla_craft.Items[1] set from storage arbiterlib:temp vanilla_craft.copyitems[{Slot:1b}]
data modify storage arbiterlib:temp vanilla_craft.Items[2] set from storage arbiterlib:temp vanilla_craft.copyitems[{Slot:2b}]
data modify storage arbiterlib:temp vanilla_craft.Items[3] set from storage arbiterlib:temp vanilla_craft.copyitems[{Slot:3b}]
data modify storage arbiterlib:temp vanilla_craft.Items[4] set from storage arbiterlib:temp vanilla_craft.copyitems[{Slot:4b}]
data modify storage arbiterlib:temp vanilla_craft.Items[5] set from storage arbiterlib:temp vanilla_craft.copyitems[{Slot:5b}]
data modify storage arbiterlib:temp vanilla_craft.Items[6] set from storage arbiterlib:temp vanilla_craft.copyitems[{Slot:6b}]
data modify storage arbiterlib:temp vanilla_craft.Items[7] set from storage arbiterlib:temp vanilla_craft.copyitems[{Slot:7b}]
data modify storage arbiterlib:temp vanilla_craft.Items[8] set from storage arbiterlib:temp vanilla_craft.copyitems[{Slot:8b}]

data modify storage arbiterlib:temp vanilla_craft.Items[0].Slot set value 1b
data modify storage arbiterlib:temp vanilla_craft.Items[1].Slot set value 2b
data modify storage arbiterlib:temp vanilla_craft.Items[2].Slot set value 3b
data modify storage arbiterlib:temp vanilla_craft.Items[3].Slot set value 10b
data modify storage arbiterlib:temp vanilla_craft.Items[4].Slot set value 11b
data modify storage arbiterlib:temp vanilla_craft.Items[5].Slot set value 12b
data modify storage arbiterlib:temp vanilla_craft.Items[6].Slot set value 19b
data modify storage arbiterlib:temp vanilla_craft.Items[7].Slot set value 20b
data modify storage arbiterlib:temp vanilla_craft.Items[8].Slot set value 21b

data modify block ~ ~ ~ Items[{Slot:1b}] set from storage arbiterlib:temp vanilla_craft.Items[0]
data modify block ~ ~ ~ Items[{Slot:2b}] set from storage arbiterlib:temp vanilla_craft.Items[1]
data modify block ~ ~ ~ Items[{Slot:3b}] set from storage arbiterlib:temp vanilla_craft.Items[2]
data modify block ~ ~ ~ Items[{Slot:10b}] set from storage arbiterlib:temp vanilla_craft.Items[3]
data modify block ~ ~ ~ Items[{Slot:11b}] set from storage arbiterlib:temp vanilla_craft.Items[4]
data modify block ~ ~ ~ Items[{Slot:12b}] set from storage arbiterlib:temp vanilla_craft.Items[5]
data modify block ~ ~ ~ Items[{Slot:19b}] set from storage arbiterlib:temp vanilla_craft.Items[6]
data modify block ~ ~ ~ Items[{Slot:20b}] set from storage arbiterlib:temp vanilla_craft.Items[7]
data modify block ~ ~ ~ Items[{Slot:21b}] set from storage arbiterlib:temp vanilla_craft.Items[8]

function arbiterlib:lib/block/blocks/workbench/work/active

playsound block.dispenser.fail block @a ~ ~ ~ 1 0.6
data modify block ~ ~1 ~ Items set value []