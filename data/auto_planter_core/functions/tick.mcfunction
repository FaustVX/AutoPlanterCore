scoreboard players enable * faustvx.planter
execute if score @a[limit=1] faustvx.planter matches 1.. run scoreboard players set _activated faustvx.planter 1
execute if score @a[limit=1] faustvx.planter matches ..-1 run scoreboard players set _activated faustvx.planter 0
scoreboard players set @a faustvx.planter 0

execute if score _activated faustvx.planter matches 1 as @e[type=minecraft:item, sort=random, limit=1, nbt={OnGround:1b, PickupDelay: 0s}] if  at @s if block ~ ~.25 ~ #auto_planter_core:air run function #auto_planter_core:planter

execute as @e[tag=faustvx.plant] run function auto_planter_core:remove_1_from_stack
