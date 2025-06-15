# Ran every tick - this is the main logic controller for the crafter.

# Handle Break
execute unless block ~ ~ ~ barrel run function crafterlib:crafterlib/cleanup
stopsound @e[type=player,distance=..6] * minecraft:block.barrel.open
stopsound @e[type=player,distance=..6] * minecraft:block.barrel.close

# Handle Player Take Out Glass
execute if items entity @p inventory.* minecraft:black_stained_glass_pane run function crafterlib:crafterlib/clear_player
execute if items entity @p armor.* minecraft:black_stained_glass_pane run function crafterlib:crafterlib/clear_player
execute if items entity @p hotbar.* minecraft:black_stained_glass_pane run function crafterlib:crafterlib/clear_player
execute if items entity @p player.cursor minecraft:black_stained_glass_pane run function crafterlib:crafterlib/clear_player

scoreboard players set @s crafterlib.success 0

# Recipes
function crafterlib:recipes/example_craft/input

execute if score @s crafterlib.success matches 0 run function crafterlib:crafterlib/clear_output