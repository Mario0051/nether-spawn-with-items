execute unless entity @a[tag=noreload] run function netherspawnwithitems:reload
execute as @a[tag=!first] unless entity @a[tag=first] run tag @s add first
execute as @a[tag=!nether] at @s if block ~ ~1 ~ nether_portal run spawnpoint @s
execute as @a[tag=!nether] at @s if block ~ ~1 ~ nether_portal run gamemode survival @s
tag @e[gamemode=survival,predicate=netherspawnwithitems:the_nether,tag=!nether] add nether
execute as @a[tag=nether] run gamerule announceAdvancements true