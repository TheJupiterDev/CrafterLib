# SOUNDS
stopsound @e[type=player,distance=..6] * minecraft:entity.item_frame.place
playsound block.wood.place block @e[type=player,distance=..10] ~ ~ ~ 10

# Summons Armor Stand Marker
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["crafter_lib.crafter"],Invisible:true,Marker:true,Invulnerable:true,NoGravity:true,NoBasePlate:true,Small:true}

# Places Barrel
function crafterlib:crafterlib_crafter/setblock

# Summons Item Display
execute align y run summon item_display ~ ~ ~ {Tags:["crafter_lib.crafterblock","crafterlib.block"],brightness:{sky:15,block:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1.001f,1.001f,1.001f]},item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"crafterlib:crafterlib_crafter"}}}