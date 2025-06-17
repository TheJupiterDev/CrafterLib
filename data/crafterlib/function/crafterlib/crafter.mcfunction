# Ran every tick for EACH (loaded? possibly?) CRAFTER - this is the main logic controller for the crafter.

# Handle Break
execute unless block ~ ~ ~ barrel run function crafterlib:crafterlib/cleanup
stopsound @e[type=player,distance=..6] * minecraft:block.barrel.open
stopsound @e[type=player,distance=..6] * minecraft:block.barrel.close

# Handle (gross) Hoppers
execute as @s run function crafterlib:crafterlib/check_hopper

# Get Recipe Ready
scoreboard players set @s crafterlib.success 0
scoreboard players set @s crafterlib.items 0
execute if data block ~ ~ ~ Items[{Slot:2b}] run scoreboard players add @s crafterlib.items 1
execute if data block ~ ~ ~ Items[{Slot:3b}] run scoreboard players add @s crafterlib.items 1
execute if data block ~ ~ ~ Items[{Slot:4b}] run scoreboard players add @s crafterlib.items 1
execute if data block ~ ~ ~ Items[{Slot:11b}] run scoreboard players add @s crafterlib.items 1
execute if data block ~ ~ ~ Items[{Slot:12b}] run scoreboard players add @s crafterlib.items 1
execute if data block ~ ~ ~ Items[{Slot:13b}] run scoreboard players add @s crafterlib.items 1
execute if data block ~ ~ ~ Items[{Slot:20b}] run scoreboard players add @s crafterlib.items 1
execute if data block ~ ~ ~ Items[{Slot:21b}] run scoreboard players add @s crafterlib.items 1
execute if data block ~ ~ ~ Items[{Slot:22b}] run scoreboard players add @s crafterlib.items 1

# Check Recipes
function crafterlib:recipes/example_craft/input

execute if score @s crafterlib.success matches 0 run function crafterlib:crafterlib/clear_slots