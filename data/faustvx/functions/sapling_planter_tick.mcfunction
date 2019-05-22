scoreboard objectives add auto_planter_trigger trigger

scoreboard players enable * auto_planter_trigger
execute if score @a[limit=1] auto_planter_trigger matches 1.. run scoreboard players set _activated auto_planter_trigger 1
execute if score @a[limit=1] auto_planter_trigger matches ..-1 run scoreboard players set _activated auto_planter_trigger 0
scoreboard players set @a auto_planter_trigger 0

execute if score _activated auto_planter_trigger matches 1 as @e[type=minecraft:item,sort=random,limit=1,nbt={OnGround:1b, Age:100s}] at @s if block ~ ~.25 ~ #auto_planter_core:air run function #auto_planter_core:planter

data modify entity @e[tag=plantSapling,limit=1] Age set value 10000
