scoreboard players set @s crafterlib.success 1
execute unless block ~ ~ ~ barrel{Items:[{Slot:16b,id:"minecraft:diamond",count:4,components:{"minecraft:custom_data":{crafterlib.output_item:1b}}}]} run scoreboard players add @s crafterlib.craft 1
execute unless score @s crafterlib.craft matches 2 run data modify block ~ ~ ~ Items append value {Slot:16b,id:"minecraft:diamond",count:4,components:{"minecraft:custom_data":{crafterlib.output_item:1b}}}
execute if score @s crafterlib.craft matches 2 run function crafterlib:crafterlib/clear