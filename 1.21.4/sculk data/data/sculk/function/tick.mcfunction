execute as @a[tag=sculk_player] at @s if score @s death_detect matches 1 run function sculk:sculk_dissolve_death
execute as @a[tag=sculk_player] at @s run function sculk:sculk_player_tick
execute as @e[type=minecraft:warden,team=!sculk] run team join sculk @s