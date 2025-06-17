# All cleanup needed when the crafter is broken

# Kill the GUI glass things
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:black_stained_glass_pane",components:{"minecraft:custom_data":{"crafterlib.crafter_glass":1b}}}}]

# Kill the Barrel
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:barrel"}},limit=1,sort=nearest]

# Kill the actual item display
kill @e[type=item_display,tag=crafterlib.crafterblock,distance=..1,limit=1,sort=nearest]

# Kill any output items
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{crafterlib.output_item:1b}}}}]

# Drop a crafter
loot spawn ~ ~ ~ loot crafterlib:crafterlib_crafter

# Kill the marker armor stand
kill @s