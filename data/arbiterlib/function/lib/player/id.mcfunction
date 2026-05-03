execute unless score . arbiterlib.player matches 1.. run function arbiterlib:lib/server/first_player
scoreboard players operation @s arbiterlib.player = . arbiterlib.player
scoreboard players add . arbiterlib.player 1