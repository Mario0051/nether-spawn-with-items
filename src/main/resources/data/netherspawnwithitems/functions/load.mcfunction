execute store result block -29999999 0 1601 LootTableSeed long 1 run seed
execute as @a at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["heightrotation"],DisabledSlots:4144959,Invulnerable:1b,Rotation:[0.0f,0.0f]}
scoreboard players set $math.in_0 du_data 3599
execute if score $math.in_0 du_data matches 3599 run function du:math/random
execute as @e[tag=heightrotation] store result entity @s Rotation[0] float 0.1 run scoreboard players get $math.out_0 du_data
execute if score $math.in_0 du_data matches 3599 run scoreboard players set $math.in_0 du_data 19
execute if score $math.in_0 du_data matches 19 run function du:math/random
execute if score $math.out_0 du_data matches 0..15 run scoreboard players set $math.in_0 du_data 6
execute if score $math.out_0 du_data matches 16 run scoreboard players set $math.in_0 du_data 45
execute if score $math.out_0 du_data matches 17..18 run scoreboard players set $math.in_0 du_data 15
execute if score $math.out_0 du_data matches 19 run scoreboard players set $math.in_0 du_data 14
execute if score $math.in_0 du_data matches 6 run function du:math/random
execute if score $math.in_0 du_data matches 45 run function du:math/random
execute if score $math.in_0 du_data matches 15 run function du:math/random
execute if score $math.in_0 du_data matches 14 run function du:math/random
execute if score $math.in_0 du_data matches 6 run scoreboard players add $math.out_0 du_data 7
execute if score $math.in_0 du_data matches 45 run scoreboard players add $math.out_0 du_data 14
execute if score $math.in_0 du_data matches 15 run scoreboard players add $math.out_0 du_data 60
execute if score $math.in_0 du_data matches 14 run scoreboard players add $math.out_0 du_data 76
execute as @e[tag=heightrotation] store result entity @s Pos[1] double 1 run scoreboard players get $math.out_0 du_data
replaceitem entity @a weapon.offhand minecraft:bread 5
replaceitem entity @a hotbar.0 minecraft:wooden_axe{Damage:10}
replaceitem entity @a hotbar.1 minecraft:iron_pickaxe{Damage:5}
replaceitem entity @a hotbar.2 minecraft:iron_shovel{Damage:10}
replaceitem entity @a hotbar.3 minecraft:lava_bucket
replaceitem entity @a hotbar.4 minecraft:oak_planks 22
replaceitem entity @a hotbar.5 minecraft:oak_boat
replaceitem entity @a hotbar.6 minecraft:crafting_table
replaceitem entity @a hotbar.7 minecraft:flint_and_steel{Damage:1}
replaceitem entity @a hotbar.8 minecraft:stick 2
replaceitem entity @a inventory.0 minecraft:iron_ingot
replaceitem entity @a inventory.1 minecraft:gravel 2
replaceitem entity @a inventory.2 minecraft:magma_block 1
replaceitem entity @a inventory.3 minecraft:cobblestone 1
execute as @e[tag=heightrotation] at @s run setblock ~ ~ ~ minecraft:nether_portal
gamerule sendCommandFeedback false
gamemode creative @a
gamerule sendCommandFeedback true
execute as @a at @e[tag=heightrotation,sort=nearest] run tp @s ~ ~ ~ ~ ~
execute as @e[tag=heightrotation] at @s unless entity @p[distance=0] run setblock ~ ~ ~ minecraft:air
execute as @e[tag=heightrotation] at @s unless entity @p[distance=0] unless block ~ ~ ~ minecraft:nether_portal run kill @s