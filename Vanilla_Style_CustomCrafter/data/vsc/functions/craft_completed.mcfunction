#> vsc:craft_completed
#
# @within vsc:tick

# クラフト欄のアイテムの削除
execute at @s run data remove block ~ ~ ~ Items[{Slot:1b}]
execute at @s run data remove block ~ ~ ~ Items[{Slot:2b}]
execute at @s run data remove block ~ ~ ~ Items[{Slot:3b}]
execute at @s run data remove block ~ ~ ~ Items[{Slot:10b}]
execute at @s run data remove block ~ ~ ~ Items[{Slot:11b}]
execute at @s run data remove block ~ ~ ~ Items[{Slot:12b}]
execute at @s run data remove block ~ ~ ~ Items[{Slot:19b}]
execute at @s run data remove block ~ ~ ~ Items[{Slot:20b}]
execute at @s run data remove block ~ ~ ~ Items[{Slot:21b}]

tag @s remove VSC.Craft_Success

# スコアリセット
scoreboard players reset @s VSC.recipeID