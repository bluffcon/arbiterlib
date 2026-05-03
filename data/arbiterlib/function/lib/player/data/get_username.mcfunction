
summon item_frame ~ ~ ~ {Fixed:1b, Invulnerable:1b, Invisible:1b}
execute as @n[type=item_frame,distance=..1] run item replace entity @s hotbar.0 with player_head
item modify entity @n[type=item_frame,distance=..1] hotbar.0 {"function": "minecraft:fill_player_head","entity": "this","conditions": []}
stopsound @a * entity.item_frame.add_item

$data modify storage arbiterlib:player_data $(id).name set from entity @n[type=item_frame,distance=..1] Item.components."minecraft:profile".name

data modify storage arbiterlib:temp previous_lastest_name set from storage arbiterlib:temp latest_name
$data modify storage arbiterlib:temp latest_name set from storage arbiterlib:player_data $(id).name

execute as @n[type=item_frame,distance=..1] run function arbiterlib:lib/instakill