# Clears both the output slots and the non-crafting slots

scoreboard players reset @s crafterlib.craft

# Summons an item of the Output slot in case the player had put something there
execute if block ~ ~ ~ barrel{Items:[{Slot:16b}]} unless block ~ ~ ~ barrel{Items:[{Slot:16b,components:{"minecraft:custom_data":{crafterlib.output_item:1b}}}]} run summon item ~ ~1 ~ {Item:{"id": "minecraft:crafting_table"}}
execute if block ~ ~ ~ barrel{Items:[{Slot:16b}]} unless block ~ ~ ~ barrel{Items:[{Slot:16b,components:{"minecraft:custom_data":{crafterlib.output_item:1b}}}]} run data modify entity @e[type=item,sort=nearest,limit=1] Item set from block ~ ~ ~ Items[{Slot:16b}]
data remove block ~ ~ ~ Items[{Slot:16b}]

# Clears the slots
function crafterlib:crafterlib/clear_slot {"slot":0}
function crafterlib:crafterlib/clear_slot {"slot":1}
function crafterlib:crafterlib/clear_slot {"slot":5}
function crafterlib:crafterlib/clear_slot {"slot":6}
function crafterlib:crafterlib/clear_slot {"slot":7}
function crafterlib:crafterlib/clear_slot {"slot":8}
function crafterlib:crafterlib/clear_slot {"slot":9}
function crafterlib:crafterlib/clear_slot {"slot":10}
function crafterlib:crafterlib/clear_slot {"slot":14}
function crafterlib:crafterlib/clear_slot {"slot":15}
function crafterlib:crafterlib/clear_slot {"slot":17}
function crafterlib:crafterlib/clear_slot {"slot":18}
function crafterlib:crafterlib/clear_slot {"slot":19}
function crafterlib:crafterlib/clear_slot {"slot":23}
function crafterlib:crafterlib/clear_slot {"slot":24}
function crafterlib:crafterlib/clear_slot {"slot":25}
function crafterlib:crafterlib/clear_slot {"slot":26}