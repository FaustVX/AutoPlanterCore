execute if score _allowMultiple faustvx.planter matches 1 as @e[type=minecraft:item, sort=random, limit=1, nbt={OnGround:1b, PickupDelay: 0s}] at @s if block ~ ~.25 ~ #auto_planter_core:air run function #auto_planter_core:planter
execute if score _allowMultiple faustvx.planter matches 0 as @e[type=minecraft:item, sort=random, limit=1, nbt={OnGround:1b, Item:{Count:1b}, PickupDelay: 0s}] at @s if block ~ ~.25 ~ #auto_planter_core:air run function #auto_planter_core:planter

execute if score _allowMultiple faustvx.planter matches 1 as @e[tag=faustvx.plant] run function auto_planter_core:remove_1_from_stack
execute if score _allowMultiple faustvx.planter matches 0 as @e[tag=faustvx.plant] run kill @s