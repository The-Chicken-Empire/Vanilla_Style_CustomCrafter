#> vsc:craft_item
#
# @within vsc:tick

data modify storage minecraft:vsc_customcrafter temp set from block ~ ~ ~ Items

data remove storage minecraft:vsc_customcrafter temp[{tag:{vsc_guiitem:1}}]
data remove storage minecraft:vsc_customcrafter temp[{Slot:16b}]

data modify storage minecraft:vsc_customcrafter temp2 set from storage minecraft:vsc_customcrafter recipes

# クラフト判定のループ
execute store result score @s VSC.result run data get storage minecraft:vsc_customcrafter recipes
scoreboard players set @s VSC.craft_item_loop 0
execute if score @s VSC.result > @s VSC.craft_item_loop run function vsc:craft_item_loop

# クラフトせずにアイテムを抜いた場合
execute if score @s[tag=VSC.Craft_Success] VSC.create_item.Success matches 1 run data remove block ~ ~ ~ Items[{Slot:16b}]
execute if score @s[tag=VSC.Craft_Success] VSC.create_item.Success matches 1 run tag @s remove VSC.Craft_Success
execute if score @s[tag=VSC.Craft_Success] VSC.create_item.Success matches 1 run scoreboard players reset @s VSC.recipeID

# スコアリセット
scoreboard players reset @s VSC.result
scoreboard players reset @s VSC.create_item.Success
scoreboard players reset @s VSC.craft_item_loop

# ストレージリセット
data remove storage minecraft:vsc_customcrafter temp
data remove storage minecraft:vsc_customcrafter temp2
