# Clears the output of the crafter when the recipe is invalid

scoreboard players reset @s crafterlib.craft

# Summons an item of the Output slot in case the player had put something there
# Excludes any output item
execute if block ~ ~ ~ barrel{Items:[{Slot:13b}]} unless block ~ ~ ~ barrel{Items:[{Slot:13b,components:{"minecraft:custom_data":{crafterlib.output_item:1b}}}]} run summon item ~ ~1 ~ {Item:{"id": "minecraft:crafting_table"}}
execute if block ~ ~ ~ barrel{Items:[{Slot:13b}]} unless block ~ ~ ~ barrel{Items:[{Slot:13b,components:{"minecraft:custom_data":{crafterlib.output_item:1b}}}]} run data modify entity @e[type=item,sort=nearest,limit=1] Item set from block ~ ~ ~ Items[{Slot:13b}]

# Deletes the output item
data remove block ~ ~ ~ Items[{Slot:13b}] 