#execute \
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
run return run function arbiterlib:craft/workbench/craft/macro {namespace:"arbiterlib",loottable:"bread_pickaxe",rarity:"common",item:"stone_pickaxe",max_stack:1}


execute \
if items block ~ ~ ~ container.1 cobblestone \
if items block ~ ~ ~ container.2 cobblestone \
if items block ~ ~ ~ container.3 cobblestone \
\
if items block ~ ~ ~ container.10 cobblestone \
unless items block ~ ~ ~ container.11 * \
if items block ~ ~ ~ container.12 cobblestone \
\
if items block ~ ~ ~ container.19 brick \
if items block ~ ~ ~ container.20 brick \
if items block ~ ~ ~ container.21 brick \
\
run return run function arbiterlib:craft/workbench/craft/macro {namespace:"arbiterlib",loottable:"smeltery",rarity:"common",max_stack:1}


