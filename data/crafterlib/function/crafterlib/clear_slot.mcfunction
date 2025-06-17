$execute if block ~ ~ ~ barrel{Items:[{Slot:$(slot)b}]} run summon item ~ ~1 ~ {Item:{"id": "minecraft:crafting_table"}}
$execute if block ~ ~ ~ barrel{Items:[{Slot:$(slot)b}]} run data modify entity @e[type=item,sort=nearest,limit=1] Item set from block ~ ~ ~ Items[{Slot:$(slot)b}]
$data remove block ~ ~ ~ Items[{Slot:$(slot)b}]