#> vsc_core:mode/return_item
#
# @within vsc_core:mode/**

# もし、スロットにアイテムが入っていた場合、ドロップさせる
$execute if data block ~ ~ ~ Items[{Slot:$(slot)b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["VSC.return_item"]}
$execute if data block ~ ~ ~ Items[{Slot:$(slot)b}] run data modify entity @e[type=item,tag=VSC.return_item,limit=1,distance=..1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:$(slot)b}]
$execute if data block ~ ~ ~ Items[{Slot:$(slot)b}] run tag @e[type=item,tag=VSC.return_item,limit=1,distance=..1,sort=nearest] remove VSC.return_item

#>
# @private 
#define tag VSC.return_item