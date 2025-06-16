# Ran every tick for EACH (loaded? possibly?) CRAFTER - this is the main logic controller for the crafter.

# Handle Break
execute unless block ~ ~ ~ barrel run function crafterlib:crafterlib/cleanup
stopsound @e[type=player,distance=..6] * minecraft:block.barrel.open
stopsound @e[type=player,distance=..6] * minecraft:block.barrel.close

# Handle Player Take Out Glass
execute if items entity @p inventory.* minecraft:black_stained_glass_pane run function crafterlib:crafterlib/clear_player
execute if items entity @p armor.* minecraft:black_stained_glass_pane run function crafterlib:crafterlib/clear_player
execute if items entity @p hotbar.* minecraft:black_stained_glass_pane run function crafterlib:crafterlib/clear_player
execute if items entity @p player.cursor minecraft:black_stained_glass_pane run function crafterlib:crafterlib/clear_player

# Handle (gross) Hoppers
execute as @s run function crafterlib:crafterlib/check_hopper

scoreboard players set @s crafterlib.success 0

# Get Recipe Ready
scoreboard players set @s crafterlib.items 0
execute if data block ~ ~ ~ Items[{Slot:0b}] run scoreboard players add @s crafterlib.items 1
execute if data block ~ ~ ~ Items[{Slot:1b}] run scoreboard players add @s crafterlib.items 1
execute if data block ~ ~ ~ Items[{Slot:2b}] run scoreboard players add @s crafterlib.items 1
execute if data block ~ ~ ~ Items[{Slot:9b}] run scoreboard players add @s crafterlib.items 1
execute if data block ~ ~ ~ Items[{Slot:10b}] run scoreboard players add @s crafterlib.items 1
execute if data block ~ ~ ~ Items[{Slot:11b}] run scoreboard players add @s crafterlib.items 1
execute if data block ~ ~ ~ Items[{Slot:18b}] run scoreboard players add @s crafterlib.items 1
execute if data block ~ ~ ~ Items[{Slot:19b}] run scoreboard players add @s crafterlib.items 1
execute if data block ~ ~ ~ Items[{Slot:20b}] run scoreboard players add @s crafterlib.items 1

function crafterlib:recipes/example_craft/input

execute if score @s crafterlib.success matches 0 run function crafterlib:crafterlib/clear_output