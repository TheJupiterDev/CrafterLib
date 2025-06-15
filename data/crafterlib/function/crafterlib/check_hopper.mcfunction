# Checks for any hoppers, and disables them
execute if block ~ ~-1 ~ hopper[enabled=true] run function crafterlib:crafterlib/replace_hopper with block ~ ~-1 ~
execute if block ~1 ~ ~ hopper[enabled=true] run function crafterlib:crafterlib/replace_hopper with block ~1 ~ ~
execute if block ~ ~ ~1 hopper[enabled=true] run function crafterlib:crafterlib/replace_hopper with block ~ ~ ~1
execute if block ~-1 ~ ~ hopper[enabled=true] run function crafterlib:crafterlib/replace_hopper with block ~-1 ~ ~
execute if block ~ ~ ~-1 hopper[enabled=true] run function crafterlib:crafterlib/replace_hopper with block ~ ~ ~-1
execute if block ~ ~1 ~ hopper[enabled=true] run function crafterlib:crafterlib/replace_hopper with block ~ ~1 ~
