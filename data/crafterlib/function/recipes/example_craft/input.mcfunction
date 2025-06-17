#execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:stone",count:1}] \
#if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:stone",count:1}] \
#if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:stone",count:1}] \
#if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:stone",count:1}] \
#if data block ~ ~ ~ Items[{Slot:19b,id:"minecraft:stone",count:1}] \
#if data block ~ ~ ~ Items[{Slot:9b,id:"minecraft:stone",count:1}] \
#if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:stone",count:1}] \
#if data block ~ ~ ~ Items[{Slot:18b,id:"minecraft:stone",count:1}] \
#if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:stone",count:1}] \
#run function crafterlib:recipes/example_craft/output

execute if score @s crafterlib.items matches 1 if data block ~ ~ ~ Items[{id:"minecraft:stone"}] run function crafterlib:recipes/example_craft/output