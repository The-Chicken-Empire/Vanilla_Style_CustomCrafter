#> vsc:create_item_success
#
# @within vsc:craft_item_loop

# Slot 16 にアイテムがあるなら返還
execute if data block ~ ~ ~ Items[{Slot:16b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["vsc_return_item"]}
data modify entity @e[type=item,tag=vsc_return_item,limit=1,distance=..1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:16b}]
tag @e[type=item,tag=vsc_return_item,limit=1,distance=..1,sort=nearest] remove vsc_return_item
execute at @s run data remove block ~ ~ ~ Items[{Slot:16b}]

execute at @s run data modify block ~ ~ ~ Items append from storage minecraft:vsc_customcrafter temp2[0].result

# クラフトが出来る場合にタグを付ける
scoreboard players operation @s VSC.recipeID = @s VSC.craft_item_loop
scoreboard players remove @s VSC.recipeID 1
tag @s add VSC.Craft_Success