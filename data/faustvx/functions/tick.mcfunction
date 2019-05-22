scoreboard objectives add saplings_planter trigger

scoreboard players enable * saplings_planter
execute if score @a[limit=1] saplings_planter matches 1.. run scoreboard players set _activated saplings_planter 1
execute if score @a[limit=1] saplings_planter matches ..-1 run scoreboard players set _activated saplings_planter 0
scoreboard players set @a saplings_planter 0


#execute if score _activated saplings_planter matches 1 as @e[type=minecraft:item,sort=random,limit=1,nbt={OnGround:1b}] at @s if block ~ ~ ~ #faustvx:air if block ~ ~-1 ~ #minecraft:dirt_like store result score @s saplings_planter run data get entity @s Age
execute if score _activated saplings_planter matches 1 as @e[type=minecraft:item,sort=random,limit=1,nbt={OnGround:1b}] at @s if block ~ ~ ~ #faustvx:air if block ~ ~-1 ~ #minecraft:dirt_like run function #faustvx:planter

data modify entity @e[tag=plantSapling,limit=1] Age set value 10000