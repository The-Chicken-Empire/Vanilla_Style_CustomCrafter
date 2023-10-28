#> vsc:return_item
#
# @within vsc:return_item


scoreboard players add @s VSC.return_item_loop 1

# アイテムを戻す
summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["vsc_return_item"]}
data modify entity @e[type=item,tag=vsc_return_item,limit=1,distance=..1,sort=nearest] Item set from storage minecraft:vsc_customcrafter temp2[0]
data remove storage minecraft:vsc_customcrafter temp2[0]
tag @e[type=item,tag=vsc_return_item,limit=1,distance=..1,sort=nearest] remove vsc_return_item

execute if score @s VSC.result > @s VSC.return_item_loop run function vsc:return_item_loop