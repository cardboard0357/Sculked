scoreboard players set @s sculk_players 0
scoreboard players set @s death_detect 0
team leave @s
particle sculk_charge_pop ~ ~ ~ 0.3 0.7 0.3 0.1 75 force
execute at @s run playsound minecraft:entity.warden.attack_impact master @a[distance=0..25] ~ ~ ~ 1 0.7
summon minecraft:warden ~ ~ ~
data merge entity @e[type=minecraft:warden,limit=1,sort=nearest] {Health:250f}
attribute @e[type=minecraft:warden,limit=1,sort=nearest] max_health base set 250
tag @s remove sculk_player