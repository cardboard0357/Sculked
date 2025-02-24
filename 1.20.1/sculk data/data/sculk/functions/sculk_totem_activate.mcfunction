scoreboard players set @s sculktimr 7950
advancement revoke @s only sculk:toetom_sculk_trigger
effect clear @s
team join sculk @s
execute at @s run particle minecraft:sculk_charge_pop ~ ~ ~ 1 1 1 0.1 90 force
execute at @s run stopsound @a[distance=0..25] player minecraft:item.totem.use
execute at @s run playsound minecraft:entity.warden.death player @a[distance=0..25] ~ ~ ~ 1 1.5
scoreboard players set @s sculk_players 1
place feature minecraft:sculk_patch_ancient_city ~ ~ ~
tag @s add sculk_player