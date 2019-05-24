execute store result score @s faustvx.planter run data get entity @s Item.Count
scoreboard players remove @s faustvx.planter 1
execute store result entity @s Item.Count short 1 run scoreboard players get @s faustvx.planter
scoreboard players reset @s faustvx.planter
tag @s remove faustvx.plant