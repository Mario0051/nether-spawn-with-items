execute unless entity @a[tag=noreload] run function netherspawnwithitems:reload
execute as @a[tag=!nether] at @s if block ~ ~1 ~ nether_portal run gamemode survival @s
tag @e[gamemode=survival,predicate=du:world/the_nether,tag=!nether] add nether