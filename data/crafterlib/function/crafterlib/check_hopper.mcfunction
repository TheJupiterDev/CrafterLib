# Checks for any hoppers, and disables them
execute if block ~ ~-1 ~ hopper[enabled=true] run function crafterlib:crafterlib/replace_hopper with block ~ ~-1 ~
execute if block ~1 ~ ~ hopper[enabled=true] run function crafterlib:crafterlib/replace_hopper with block ~1 ~ ~
execute if block ~ ~ ~1 hopper[enabled=true] run function crafterlib:crafterlib/replace_hopper with block ~ ~ ~1
execute if block ~-1 ~ ~ hopper[enabled=true] run function crafterlib:crafterlib/replace_hopper with block ~-1 ~ ~
execute if block ~ ~ ~-1 hopper[enabled=true] run function crafterlib:crafterlib/replace_hopper with block ~ ~ ~-1
execute if block ~ ~1 ~ hopper[enabled=true] run function crafterlib:crafterlib/replace_hopper with block ~ ~1 ~

execute as @e[type=hopper_minecart,dy=-1] run function crafterlib:crafterlib/replace_hopper_minecart