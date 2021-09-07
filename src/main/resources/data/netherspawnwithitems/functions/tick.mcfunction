execute as @a at @s if block ~ ~1 ~ nether_portal run gamemode survival @s
execute unless entity @a[tag=noreload] run function netherspawnwithitems:reload