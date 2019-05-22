scoreboard players enable * faustvx.planter
execute if score @a[limit=1] faustvx.planter matches 1.. run scoreboard players set _activated faustvx.planter 1
execute if score @a[limit=1] faustvx.planter matches ..-1 run scoreboard players set _activated faustvx.planter 0
scoreboard players set @a faustvx.planter 0

execute if score _activated faustvx.planter matches 1 as @e[type=minecraft:item, sort=random, limit=1, nbt={OnGround:1b, Item:{Count:1b}, PickupDelay: 0s}] at @s if block ~ ~.25 ~ #auto_planter_core:air run function #auto_planter_core:planter

data modify entity @e[tag=faustvx.plant,limit=1] Age set value 10000
