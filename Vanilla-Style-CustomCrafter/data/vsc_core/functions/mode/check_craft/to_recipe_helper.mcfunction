#> vsc_core:mode/check_craft/to_recipe_helper
#
# @within vsc_core:mode/check_craft/to_recipe

# もし、スロットにアイテムが入っていた場合、ドロップさせる
$execute if data block ~ ~ ~ Items[{Slot:$(slot)b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["VSC.return_item"]}
$execute if data block ~ ~ ~ Items[{Slot:$(slot)b}] run data modify entity @e[type=item,tag=VSC.return_item,limit=1,distance=..1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:$(slot)b}]
$execute if data block ~ ~ ~ Items[{Slot:$(slot)b}] run tag @e[type=item,tag=VSC.return_item,limit=1,distance=..1,sort=nearest] remove VSC.return_item

$execute if data block ~ ~ ~ Items[{Slot:$(slot)b}] run say yes

# 該当箇所のデータを削除
$execute if data block ~ ~ ~ Items[{Slot:$(slot)b}] run data modify block ~ ~ ~ Items[{Slot:$(slot)b}]

# 現在のデータを保存しておく
$data modify storage vsc_core:main items prepend value {UUID:$(UUID)}
data modify storage vsc_core:main items[0].items set from block ~ ~ ~ Items


#>
#
# @private 
#define tag VSC.return_item