#> vsc_core:gui/return
#
# @within vsc_core:gui/*

# ドロップアイテムとして召喚する部分
summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["VSC.return_item"]}
data modify entity @e[type=item,tag=VSC.return_item,limit=1,distance=..1,sort=nearest] Item set from storage vsc_core:main tmp.1[0]
tag @e[type=item,tag=VSC.return_item,limit=1,distance=..1,sort=nearest] remove VSC.return_item

# ストレージから該当部分を削除
data remove storage vsc_core:main tmp.1[0]
$execute if score @s VSC.mode matches 0 run data remove storage vsc_core:main tmp.data.Items[{Slot:$(Slot)b}]

#ループ処理用の操作
scoreboard players add VSC.count VSC.main 1
execute if score VSC.count VSC.main < VSC.loop VSC.main run function vsc_core:gui/return with storage vsc_core:main tmp.1[0]

# 定義部分
#>
# @private
#define tag VSC.return_item