execute unless block ~ ~1 ~ crafter[orientation=down_east] unless block ~ ~1 ~ crafter[orientation=down_north] unless block ~ ~1 ~ crafter[orientation=down_south] unless block ~ ~1 ~ crafter[orientation=down_west] run return fail
execute if data block ~ ~ ~ Items[{Slot:7b}].components."minecraft:custom_data".arbiterlib.id run return fail
execute if items block ~ ~ ~ container.16 * run return fail

function arbiterlib:craft/workbench/vanilla/main