execute if score @s arbiterlib.block.light matches 1 if predicate arbiterlib:light/named/no_sky/bright run return fail
execute if score @s arbiterlib.block.light matches 101 if predicate arbiterlib:light/named/with_sky/bright run return fail
execute if score @s arbiterlib.block.light matches 2 if predicate arbiterlib:light/named/no_sky/regular run return fail
execute if score @s arbiterlib.block.light matches 102 if predicate arbiterlib:light/named/with_sky/regular run return fail
execute if score @s arbiterlib.block.light matches 3 if predicate arbiterlib:light/named/no_sky/shy run return fail
execute if score @s arbiterlib.block.light matches 103 if predicate arbiterlib:light/named/with_sky/shy run return fail
execute if score @s arbiterlib.block.light matches 4 if predicate arbiterlib:light/named/no_sky/dim run return fail
execute if score @s arbiterlib.block.light matches 104 if predicate arbiterlib:light/named/with_sky/dim run return fail

execute positioned ~ ~1 ~ if predicate arbiterlib:light/named/no_sky/bright run scoreboard players set @s arbiterlib.block.light 1
execute positioned ~ ~1 ~ if predicate arbiterlib:light/named/no_sky/regular run scoreboard players set @s arbiterlib.block.light 2
execute positioned ~ ~1 ~ if predicate arbiterlib:light/named/no_sky/shy run scoreboard players set @s arbiterlib.block.light 3
execute positioned ~ ~1 ~ if predicate arbiterlib:light/named/no_sky/dim run scoreboard players set @s arbiterlib.block.light 4
execute positioned ~ ~1 ~ if predicate arbiterlib:light/named/no_sky/none run scoreboard players set @s arbiterlib.block.light 5

execute positioned ~ ~1 ~ if predicate arbiterlib:light/named/with_sky/bright run scoreboard players set @s arbiterlib.block.light 101
execute positioned ~ ~1 ~ if predicate arbiterlib:light/named/with_sky/regular run scoreboard players set @s arbiterlib.block.light 102
execute positioned ~ ~1 ~ if predicate arbiterlib:light/named/with_sky/shy run scoreboard players set @s arbiterlib.block.light 103
execute positioned ~ ~1 ~ if predicate arbiterlib:light/named/with_sky/dim run scoreboard players set @s arbiterlib.block.light 104
execute positioned ~ ~1 ~ if predicate arbiterlib:light/named/with_sky/none run scoreboard players set @s arbiterlib.block.light 105

execute if score @s arbiterlib.block.light matches 1 run data modify entity @s brightness set value {block:15,sky:5}
execute if score @s arbiterlib.block.light matches 2 run data modify entity @s brightness set value {block:11,sky:4}
execute if score @s arbiterlib.block.light matches 3 run data modify entity @s brightness set value {block:8,sky:3}
execute if score @s arbiterlib.block.light matches 4 run data modify entity @s brightness set value {block:4,sky:2}
execute if score @s arbiterlib.block.light matches 5 run data modify entity @s brightness set value {block:0,sky:1}

execute if score @s arbiterlib.block.light matches 101 run data modify entity @s brightness set value {block:9,sky:15}
execute if score @s arbiterlib.block.light matches 102 run data modify entity @s brightness set value {block:5,sky:15}
execute if score @s arbiterlib.block.light matches 103 run data modify entity @s brightness set value {block:3,sky:14}
execute if score @s arbiterlib.block.light matches 104 run data modify entity @s brightness set value {block:1,sky:13}
execute if score @s arbiterlib.block.light matches 105 run data modify entity @s brightness set value {block:0,sky:10}