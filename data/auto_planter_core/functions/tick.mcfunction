scoreboard objectives add auto_planter trigger

scoreboard players enable * auto_planter
execute if score @a[limit=1] auto_planter matches 1.. run scoreboard players set _activated auto_planter 1
execute if score @a[limit=1] auto_planter matches ..-1 run scoreboard players set _activated auto_planter 0
scoreboard players set @a auto_planter 0

execute if score _activated auto_planter matches 1 as @e[type=minecraft:item,sort=random,limit=1,nbt={OnGround:1b, Age:100s}] at @s if block ~ ~.25 ~ #auto_planter_core:air run function #auto_planter_core:planter

data modify entity @e[tag=plantSapling,limit=1] Age set value 10000
