function tesla:demo
execute as @n[tag=boreE,nbt={interaction:{}}] at @s run tellraw @a[distance=..5] {"color":"aqua","text":"√"}
execute as @n[tag=boreE,nbt={interaction:{}}] at @s run setblock ~ ~-1 ~ air destroy
execute as @n[tag=boreE,nbt={interaction:{}}] at @s run kill @e[distance=..1.5,type=item,nbt={Item:{id:"minecraft:hopper"}}]
execute as @n[tag=boreE,nbt={interaction:{}}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",count:1,components:{"minecraft:custom_name":{"text":"Bore","color":"light_purple"},"minecraft:enchantment_glint_override":true,"minecraft:item_model":"minecraft:allay_spawn_egg","minecraft:entity_data":{id:"minecraft:armor_stand",OnGround:1b,NoGravity:1b,Invulnerable:1b,Tags:["borePlace","bore","boreA","boreAB"],Invisible:1b,Marker:1b,equipment:{head:{id:"minecraft:magenta_glazed_terracotta"}},Pose:{Head:[0b,180s,0b]},Small:1b}}}}
execute as @n[tag=boreE,nbt={interaction:{}}] at @s run kill @e[distance=..1.2,tag=bore]
execute as @n[tag=boreE,nbt={interaction:{}}] at @s run tag @s remove boreE