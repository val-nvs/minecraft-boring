schedule function tesla:time 1s replace
scoreboard players add @e[tag=boreOn] teslatime 1
execute as @e[scores={teslatime=01}] at @s if block ~-1 ~00 ~00 air run scoreboard players add @e[tag=boreOn] teslatime 1
execute as @e[scores={teslatime=01}] at @s run setblock ~-1 ~00 ~00 air destroy
execute as @e[scores={teslatime=02}] at @s if block ~00 ~00 ~-1 air run scoreboard players add @e[tag=boreOn] teslatime 1
execute as @e[scores={teslatime=02}] at @s run setblock ~00 ~00 ~-1 air destroy
execute as @e[scores={teslatime=03}] at @s if block ~01 ~00 ~00 air run scoreboard players add @e[tag=boreOn] teslatime 1
execute as @e[scores={teslatime=03}] at @s run setblock ~01 ~00 ~00 air destroy
execute as @e[scores={teslatime=04}] at @s if block ~00 ~00 ~01 air run scoreboard players add @e[tag=boreOn] teslatime 1
execute as @e[scores={teslatime=04}] at @s run setblock ~00 ~00 ~01 air destroy
execute as @e[scores={teslatime=05}] at @s if block ~-1 ~01 ~00 air run scoreboard players add @e[tag=boreOn] teslatime 1
execute as @e[scores={teslatime=05}] at @s run setblock ~-1 ~01 ~00 air destroy
execute as @e[scores={teslatime=06}] at @s if block ~00 ~01 ~-1 air run scoreboard players add @e[tag=boreOn] teslatime 1
execute as @e[scores={teslatime=06}] at @s run setblock ~00 ~01 ~-1 air destroy
execute as @e[scores={teslatime=07}] at @s if block ~01 ~01 ~00 air run scoreboard players add @e[tag=boreOn] teslatime 1
execute as @e[scores={teslatime=07}] at @s run setblock ~01 ~01 ~00 air destroy
execute as @e[scores={teslatime=08}] at @s if block ~00 ~01 ~01 air run scoreboard players add @e[tag=boreOn] teslatime 1
execute as @e[scores={teslatime=08}] at @s run setblock ~00 ~01 ~01 air destroy
execute as @e[scores={teslatime=09}] at @s if block ~-1 ~00 ~-1 air run scoreboard players add @e[tag=boreOn] teslatime 1
execute as @e[scores={teslatime=09}] at @s run setblock ~-1 ~00 ~-1 air destroy
execute as @e[scores={teslatime=10}] at @s if block ~01 ~00 ~-1 air run scoreboard players add @e[tag=boreOn] teslatime 1
execute as @e[scores={teslatime=10}] at @s run setblock ~01 ~00 ~-1 air destroy
execute as @e[scores={teslatime=11}] at @s if block ~-1 ~00 ~01 air run scoreboard players add @e[tag=boreOn] teslatime 1
execute as @e[scores={teslatime=11}] at @s run setblock ~-1 ~00 ~01 air destroy
execute as @e[scores={teslatime=12}] at @s if block ~01 ~00 ~01 air run scoreboard players add @e[tag=boreOn] teslatime 1
execute as @e[scores={teslatime=12}] at @s run setblock ~01 ~00 ~01 air destroy
execute as @e[scores={teslatime=13}] at @s if block ~-1 ~01 ~-1 air run scoreboard players add @e[tag=boreOn] teslatime 1
execute as @e[scores={teslatime=13}] at @s run setblock ~-1 ~01 ~-1 air destroy
execute as @e[scores={teslatime=14}] at @s if block ~01 ~01 ~-1 air run scoreboard players add @e[tag=boreOn] teslatime 1
execute as @e[scores={teslatime=14}] at @s run setblock ~01 ~01 ~-1 air destroy
execute as @e[scores={teslatime=15}] at @s if block ~-1 ~01 ~01 air run scoreboard players add @e[tag=boreOn] teslatime 1
execute as @e[scores={teslatime=15}] at @s run setblock ~-1 ~01 ~01 air destroy
execute as @e[scores={teslatime=16}] at @s if block ~01 ~01 ~01 air run scoreboard players add @e[tag=boreOn] teslatime 1
execute as @e[scores={teslatime=16}] at @s run setblock ~01 ~01 ~01 air destroy
execute as @e[scores={teslatime=17}] at @s run data modify entity @n[tag=boreC] Rotation set from entity @n[tag=boreB] Rotation
execute as @e[scores={teslatime=17}] at @s run data modify entity @n[tag=boreF] Rotation set from entity @n[tag=boreB] Rotation
execute as @e[scores={teslatime=17}] at @s run setblock ~ ~ ~ minecraft:hopper destroy
execute as @e[scores={teslatime=18}] at @s run tp @e[type=item,distance=..5] ~ ~1 ~
execute as @e[scores={teslatime=25}] at @s run setblock ~ ~ ~ minecraft:air
execute as @e[scores={teslatime=25}] at @s run data modify entity @n[tag=boreC] Rotation set from entity @n[tag=boreA] Rotation
execute as @e[scores={teslatime=25}] at @s run data modify entity @n[tag=boreF] Rotation set from entity @n[tag=boreA] Rotation
execute as @e[scores={teslatime=30..}] at @s run tag @s remove boreOn
execute as @e[scores={teslatime=30..}] at @s run scoreboard players reset @s teslatime