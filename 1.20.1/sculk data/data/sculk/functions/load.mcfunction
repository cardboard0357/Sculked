scoreboard objectives add sculktimr dummy
scoreboard objectives add sculk_players dummy
scoreboard objectives add death_detect deathCount
scoreboard players set @a death_detect 0
scoreboard players set @a sculk_players 0
team add sculk "sculk"
team modify sculk friendlyFire false
team modify sculk color dark_blue
team leave @a
tag @a remove sculk_player