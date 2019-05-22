scoreboard objectives add auto_planter trigger
scoreboard players set _activated auto_planter 1

tellraw @a ["",{"text":"Auto Planter is activated. "},{"text":"[Deactivate]","color":"red","clickEvent":{"action":"run_command","value":"/trigger auto_planter set -1"},"hoverEvent":{"action":"show_text","value":"/trigger auto_planter set -1"}},{"text":" "},{"text":"[Activate]","color":"green","clickEvent":{"action":"run_command","value":"/trigger auto_planter set 1"},"hoverEvent":{"action":"show_text","value":"/trigger auto_planter set 1"}}]