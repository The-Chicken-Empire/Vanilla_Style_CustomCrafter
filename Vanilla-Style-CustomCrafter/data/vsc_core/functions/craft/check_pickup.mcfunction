#> vsc_core:craft/check_pickup
#
# @within vsc_core:craft/check

# 完成品スロットが違うアイテムになっていればクラフト欄のアイテムを個数分減らす
data modify storage vsc_core:main tmp.1 set from storage vsc_core:main tmp.data.result
$execute store result score VSC.diff_data VSC.main run data modify storage vsc_core:main tmp.1 set from storage vsc_core:main recipes[$(recipeID)].result
execute if score VSC.diff_data VSC.main matches 1 run function vsc_core:craft/remove_items with storage vsc_core:main tmp

# クラフト欄が要求を満たしているかを確認し、違うなら完成品を消す
$data modify storage vsc_core:main tmp.recipe set from storage vsc_core:main recipes[$(recipeID)].require
scoreboard players set VSC.diff_recipe VSC.main 0
data modify storage vsc_core:main tmp.invs set from storage vsc_core:main tmp.data.Items
data remove storage vsc_core:main tmp.invs[{Slot:16b}]
execute store result score VSC.require_loop.loop VSC.main run data get storage vsc_core:main tmp.recipe
scoreboard players set VSC.require_loop.count VSC.main 0
execute if score VSC.require_loop.count VSC.main < VSC.require_loop.loop VSC.main run function vsc_core:craft/check_require_loop

execute if score VSC.diff_recipe VSC.main matches 1 run data remove block ~ ~ ~ Items[{Slot:16b}]
execute if score VSC.diff_recipe VSC.main matches 1 run data remove storage vsc_core:main tmp.data.result
execute if score VSC.diff_recipe VSC.main matches 1 run scoreboard players reset @s VSC.craft_recipeID
execute if score VSC.diff_recipe VSC.main matches 1 run tag @s add VSC.picked_up1


execute if score VSC.diff_data VSC.main matches 1 run scoreboard players reset @s VSC.craft_recipeID
execute if score VSC.diff_data VSC.main matches 1 run tag @s add VSC.picked_up1




# スコアをリセット
scoreboard players reset VSC.diff_data VSC.main
scoreboard players reset VSC.diff_recipe VSC.main

# 一部ストレージをリセット
data remove storage vsc_core:main tmp.recipe
data remove storage vsc_core:main tmp.1

#>
# @private
#define score_holder VSC.diff_data
