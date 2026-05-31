summon splash_potion ~ ~3 ~ {Motion:[0,0.5,0]}
execute positioned ~ ~3 ~ run item modify entity @n[type=splash_potion,distance=..1] weapon.mainhand {"function":set_random_potion,options:"#minecraft:tradeable"}

execute if items entity @n[type=splash_potion] container.* * run say contun
execute if items entity @n[type=splash_potion] weapon.* * run say contun12
execute if items entity @n[type=splash_potion] contents * run say 454
execute if items entity @n[type=splash_potion] hotbar.* * run say contuzzzzzzzzzzz
say runen