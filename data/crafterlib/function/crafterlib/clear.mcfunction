# Ran after a completed craft. Resets the barrel.

item modify block ~ ~ ~ container.2 crafterlib:remove_one
item modify block ~ ~ ~ container.3 crafterlib:remove_one
item modify block ~ ~ ~ container.4 crafterlib:remove_one
item modify block ~ ~ ~ container.11 crafterlib:remove_one
item modify block ~ ~ ~ container.12 crafterlib:remove_one
item modify block ~ ~ ~ container.13 crafterlib:remove_one
item modify block ~ ~ ~ container.20 crafterlib:remove_one
item modify block ~ ~ ~ container.21 crafterlib:remove_one
item modify block ~ ~ ~ container.22 crafterlib:remove_one

execute as @p run function crafterlib:crafterlib/clear_player_custom_data

scoreboard players reset @s crafterlib.craft