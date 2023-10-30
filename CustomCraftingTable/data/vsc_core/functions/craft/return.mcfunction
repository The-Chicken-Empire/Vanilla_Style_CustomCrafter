#> vsc_core:craft/return
#
# @within vsc_core:craft/found_recipe

# 完成品スロットに入っているアイテムをドロップアイテムとして召喚
summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["VSC.return_item"]}
data modify entity @e[type=item,tag=VSC.return_item,limit=1,distance=..1,sort=nearest] Item set from storage vsc_core:main tmp.data.result
tag @e[type=item,tag=VSC.return_item,limit=1,distance=..1,sort=nearest] remove VSC.return_item
data remove storage vsc_core:main tmp.require[0]

#完成品スロットからアイテムを消す。
data remove block ~ ~ ~ Items[{Slot:16b}]

# タグの定義
#>
# @private
#define tag VSC.return_item