scoreboard objectives add faustvx.planter trigger
scoreboard players set _activated faustvx.planter 1

tellraw @a ["",{"text":"Auto Planter is activated. "},{"text":"[Deactivate]","color":"red","clickEvent":{"action":"run_command","value":"/trigger faustvx.planter set -1"},"hoverEvent":{"action":"show_text","value":"/trigger faustvx.planter set -1"}},{"text":" "},{"text":"[Activate]","color":"green","clickEvent":{"action":"run_command","value":"/trigger faustvx.planter set 1"},"hoverEvent":{"action":"show_text","value":"/trigger faustvx.planter set 1"}}]