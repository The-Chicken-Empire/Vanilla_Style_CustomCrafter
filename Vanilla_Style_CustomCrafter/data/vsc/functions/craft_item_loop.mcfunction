#> vsc:craft_item_loop
#
# @within vsc:craft_item

scoreboard players add @s VSC.craft_item_loop 1

# クラフト判定
execute store success score @s VSC.create_item.Success run data modify storage minecraft:vsc_customcrafter temp2[0].require set from storage minecraft:vsc_customcrafter temp

execute if score @s[tag=!VSC.Craft_Success] VSC.create_item.Success matches 0 run function vsc:create_item_success
execute if score @s[tag=VSC.Craft_Success] VSC.create_item.Success matches 0 run function vsc:craft_pickup_check
data remove storage minecraft:vsc_customcrafter temp2[0]

execute unless score @s VSC.create_item.Success matches 0 if score @s VSC.result > @s VSC.craft_item_loop run function vsc:craft_item_loop