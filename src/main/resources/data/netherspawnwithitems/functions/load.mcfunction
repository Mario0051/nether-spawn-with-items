scoreboard objectives add nswi_data dummy
forceload add -29999999 1600
setblock -29999999 0 1601 minecraft:green_shulker_box{LootTable:"netherspawnwithitems:random"}
execute store result block -29999999 0 1601 LootTableSeed long 1 run seed
setblock -29999999 0 1601 minecraft:bedrock destroy
tag @e[type=minecraft:item,nbt={Item:{tag:{BlockEntityTag:{Items:[{tag:{nswi_data:1b}}]}}}},tag=!data] add data
execute as @e[tag=data] at @s run data
execute as @e[tag=data] store result score $math.out_0 nswi_data run data get entity @s Item.tag.BlockEntityTag.Items[0].tag.AttributeModifiers[0].Amount 200000
execute as @a[tag=data] run function netherspawnwithitems:spawn_shift
execute as @a[tag=first] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["height"],DisabledSlots:4144959,Invulnerable:1b}
execute as @e[tag=height] run function netherspawnwithitems:rotate
scoreboard players operation @e[tag=height] nswi_data = $math.out_0 nswi_data
scoreboard players set $math.in_0 nswi_data 19
execute if score $math.in_0 nswi_data matches 19 run scoreboard players operation @e[tag=height] nswi_data %= $math.in_0 nswi_data
execute as @e[tag=height] if score @s du_data matches 0..15 run scoreboard players set $math.in_0 nswi_data 6
execute as @e[tag=height] if score @s du_data matches 16 run scoreboard players set $math.in_0 nswi_data 45
execute as @e[tag=height] if score @s du_data matches 17..18 run scoreboard players set $math.in_0 nswi_data 15
execute as @e[tag=height] if score @s du_data matches 19 run scoreboard players set $math.in_0 nswi_data 14
execute if score $math.in_0 nswi_data matches 6 run scoreboard players operation @e[tag=height] nswi_data %= $math.in_0 nswi_data
execute if score $math.in_0 nswi_data matches 45 run scoreboard players operation @e[tag=height] nswi_data %= $math.in_0 nswi_data
execute if score $math.in_0 nswi_data matches 15 run scoreboard players operation @e[tag=height] nswi_data %= $math.in_0 nswi_data
execute if score $math.in_0 nswi_data matches 14 run scoreboard players operation @e[tag=height] nswi_data %= $math.in_0 nswi_data
execute if score $math.in_0 nswi_data matches 6 run scoreboard players add @e[tag=height] nswi_data 7
execute if score $math.in_0 nswi_data matches 45 run scoreboard players add @e[tag=height] nswi_data 14
execute if score $math.in_0 nswi_data matches 15 run scoreboard players add @e[tag=height] nswi_data 60
execute if score $math.in_0 nswi_data matches 14 run scoreboard players add @e[tag=height] nswi_data 76
execute as @e[tag=height] store result entity @s Pos[1] double 1 run scoreboard players get @s nswi_data
replaceitem entity @a weapon.offhand minecraft:bread 5
recipe give @a minecraft:bread
replaceitem entity @a hotbar.0 minecraft:wooden_axe{Damage:10}
recipe give @a minecraft:wooden_axe
replaceitem entity @a hotbar.1 minecraft:iron_pickaxe{Damage:5}
recipe give @a minecraft:iron_pickaxe
replaceitem entity @a hotbar.2 minecraft:iron_shovel{Damage:10}
recipe give @a minecraft:iron_shovel
replaceitem entity @a hotbar.3 minecraft:lava_bucket
replaceitem entity @a hotbar.4 minecraft:oak_planks 22
recipe give @a minecraft:oak_planks
replaceitem entity @a hotbar.5 minecraft:oak_boat
recipe give @a minecraft:oak_boat
replaceitem entity @a hotbar.6 minecraft:crafting_table
recipe give @a minecraft:crafting_table
replaceitem entity @a hotbar.7 minecraft:flint_and_steel{Damage:1}
recipe give @a minecraft:flint_and_steel
replaceitem entity @a hotbar.8 minecraft:stick 2
recipe give @a minecraft:stick
recipe give @a minecraft:stick_from_bamboo_item
replaceitem entity @a inventory.0 minecraft:iron_ingot
recipe give @a minecraft:iron_ingot_from_blasting_iron_ore
recipe give @a minecraft:iron_ingot_from_iron_block
recipe give @a minecraft:iron_ingot_from_nuggets
recipe give @a minecraft:iron_ingot_from_smelting_iron_ore
replaceitem entity @a inventory.1 minecraft:gravel 2
replaceitem entity @a inventory.2 minecraft:magma_block 1
recipe give @a minecraft:magma_block
replaceitem entity @a inventory.3 minecraft:cobblestone 1
execute as @e[tag=height] at @s run setblock ~ ~ ~ minecraft:nether_portal
gamerule sendCommandFeedback false
gamemode creative @a
gamerule sendCommandFeedback true
execute at @e[tag=height] run tp @a ~ ~ ~