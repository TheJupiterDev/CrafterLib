# All cleanup needed when the crafter is broken

# Kill the Barrel
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:barrel"}},limit=1,sort=nearest]

# Kill any output items
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{crafterlib.output_item:1b}}}}]

# Drop a crafter
loot spawn ~ ~ ~ loot crafterlib:crafterlib_crafter

# Kill the armor stand
kill @s