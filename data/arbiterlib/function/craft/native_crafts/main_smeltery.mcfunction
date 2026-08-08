
execute \
if items block ~ ~ ~ container.2 clay_ball \
run return run function arbiterlib:craft/smeltery/craft/macro \
{namespace:"arbiterlib",loottable:"brick",max_stack:64,needed_heat:400,consume_heat:100}
