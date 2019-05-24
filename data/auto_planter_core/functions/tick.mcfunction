scoreboard players enable * faustvx.planter
execute if score @a[limit=1] faustvx.planter matches 1.. run scoreboard players set _activated faustvx.planter 1
execute if score @a[limit=1] faustvx.planter matches ..-1 run scoreboard players set _activated faustvx.planter 0
execute unless score @a[limit=1] faustvx.planter matches 0 run function #auto_planter_core:load
scoreboard players set @a faustvx.planter 0

execute if score _activated faustvx.planter matches 1 run function auto_planter_core:activated