execute as @s[nbt={Item:{id:"minecraft:acacia_sapling"}}] run tag @s add plantSapling
execute as @s[nbt={Item:{id:"minecraft:acacia_sapling"}},tag=plantSapling] at @s run setblock ~ ~ ~ minecraft:acacia_sapling