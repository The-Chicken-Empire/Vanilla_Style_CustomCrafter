#> vsc:diff_item
#
# @within vsc:tick

# データ取得
data modify storage minecraft:vsc_customcrafter temp set from block ~ ~ ~ Items
data modify storage minecraft:vsc_customcrafter temp3 set from storage minecraft:vsc_customcrafter customcrafter

# 比較したくないスロットをあらかじめ削除しておく
# クラフト用スロット
data modify storage minecraft:vsc_customcrafter temp3 append from storage minecraft:vsc_customcrafter temp[{Slot:1b}]
data remove storage minecraft:vsc_customcrafter temp[{Slot:1b}]
data modify storage minecraft:vsc_customcrafter temp3 append from storage minecraft:vsc_customcrafter temp[{Slot:2b}]
data remove storage minecraft:vsc_customcrafter temp[{Slot:2b}]
data modify storage minecraft:vsc_customcrafter temp3 append from storage minecraft:vsc_customcrafter temp[{Slot:3b}]
data remove storage minecraft:vsc_customcrafter temp[{Slot:3b}]
data modify storage minecraft:vsc_customcrafter temp3 append from storage minecraft:vsc_customcrafter temp[{Slot:10b}]
data remove storage minecraft:vsc_customcrafter temp[{Slot:10b}]
data modify storage minecraft:vsc_customcrafter temp3 append from storage minecraft:vsc_customcrafter temp[{Slot:11b}]
data remove storage minecraft:vsc_customcrafter temp[{Slot:11b}]
data modify storage minecraft:vsc_customcrafter temp3 append from storage minecraft:vsc_customcrafter temp[{Slot:12b}]
data remove storage minecraft:vsc_customcrafter temp[{Slot:12b}]
data modify storage minecraft:vsc_customcrafter temp3 append from storage minecraft:vsc_customcrafter temp[{Slot:19b}]
data remove storage minecraft:vsc_customcrafter temp[{Slot:19b}]
data modify storage minecraft:vsc_customcrafter temp3 append from storage minecraft:vsc_customcrafter temp[{Slot:20b}]
data remove storage minecraft:vsc_customcrafter temp[{Slot:20b}]
data modify storage minecraft:vsc_customcrafter temp3 append from storage minecraft:vsc_customcrafter temp[{Slot:21b}]
data remove storage minecraft:vsc_customcrafter temp[{Slot:21b}]
# 完成品スロット
data modify storage minecraft:vsc_customcrafter temp3 append from storage minecraft:vsc_customcrafter temp[{Slot:16b}]
data remove storage minecraft:vsc_customcrafter temp[{Slot:16b}]

data modify storage minecraft:vsc_customcrafter temp2 set from storage minecraft:vsc_customcrafter temp

execute store success score @s VSC.Success run data modify storage minecraft:vsc_customcrafter temp set from storage minecraft:vsc_customcrafter customcrafter
execute if score @s VSC.Success matches 1 run function vsc:return_item

scoreboard players reset @s VSC.Success