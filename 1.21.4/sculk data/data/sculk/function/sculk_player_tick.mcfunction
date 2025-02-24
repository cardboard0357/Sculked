scoreboard players remove @s sculktimr 1
execute at @s as @e[distance=0..7,team=!sculk] at @s run effect give @s darkness 2 1
execute if score @s sculktimr matches 1 as @s at @s run function sculk:sculk_dissolve
effect give @s minecraft:saturation 2 255 true
effect give @s minecraft:fire_resistance 2 255 true
effect give @s speed 12 2 true
effect give @s strength 12 1 true
effect give @s minecraft:night_vision 2 1 true
effect clear @s minecraft:darkness
effect clear @s blindness
execute at @s run stopsound @a[distance=0..25] player minecraft:item.totem.use
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 sculk replace #minecraft:sculk_replaceable
execute unless block ~ ~-1 ~ sculk unless block ~ ~-1 ~ sculk_vein unless block ~ ~-1 ~ air unless block ~ ~-1 ~ #minecraft:sculk_replaceable if block ~ ~ ~ #air run setblock ~ ~ ~ sculk_vein[down=true] keep
execute if block ~ ~ ~ minecraft:sculk_shrieker[can_summon=false] run setblock ~ ~ ~ minecraft:sculk_shrieker[can_summon=true]
execute if block ~ ~-1 ~ sculk_catalyst run function sculk:sculk_boost
particle sculk_soul ~ ~ ~ 0.1 0.1 0.1 0.1 1 force