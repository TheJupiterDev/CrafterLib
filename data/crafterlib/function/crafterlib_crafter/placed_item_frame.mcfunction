advancement revoke @s only crafterlib:placed_crafterlib_crafter
tag @s add crafterlib.block_place
execute as @e[type=item_frame,tag=crafterlib.block,distance=..10] at @s run function crafterlib:crafterlib_crafter/determine_block
tag @s remove crafterlib.block_place