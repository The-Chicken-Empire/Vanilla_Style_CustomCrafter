#> vsc:craft_pickup_check
#
# @within vsc:craft_item_loop

data modify storage minecraft:vsc_customcrafter temp3 set from block ~ ~ ~ Items[{Slot:16b}]
execute store result score @s VSC.craft_pickupcheck.success run data modify storage minecraft:vsc_customcrafter temp3 set from storage minecraft:vsc_customcrafter temp2[0].result
execute if score @s VSC.craft_pickupcheck.success matches 1 run function vsc:craft_completed

# スコアリセット
scoreboard players reset @s VSC.craft_pickupcheck.success

# ストレージリセット
data remove storage minecraft:vsc_customcrafter temp3