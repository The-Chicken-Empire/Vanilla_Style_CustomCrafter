#> vsc:return_item
#
# @within vsc:diff_item

data remove storage minecraft:vsc_customcrafter temp2[{tag:{vsc_guiitem:1}}]

# アイテム返還のループ
execute store result score @s VSC.result run data get storage minecraft:vsc_customcrafter temp2
scoreboard players set @s VSC.return_item_loop 0
execute if score @s VSC.result > @s VSC.return_item_loop run function vsc:return_item_loop

data modify block ~ ~ ~ Items set from storage minecraft:vsc_customcrafter temp3

# スコアリセット
scoreboard players reset @s VSC.result
scoreboard players reset @s VSC.Success
scoreboard players reset @s VSC.return_item_loop

# ストレージリセット
data remove storage minecraft:vsc_customcrafter temp
data remove storage minecraft:vsc_customcrafter temp2
data remove storage minecraft:vsc_customcrafter temp3