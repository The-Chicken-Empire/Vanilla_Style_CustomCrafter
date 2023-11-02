#> vsc_core:craft/check_pickup
#
# @within vsc_core:craft/check

# 完成品スロットが違うアイテムになっていればクラフト欄のアイテムを全て消してrecipeIDを外す
data modify storage vsc_core:main tmp.1 set from storage vsc_core:main tmp.data.result
$execute store result score VSC.diff_data VSC.main run data modify storage vsc_core:main tmp.1 set from storage vsc_core:main recipes[$(recipeID)].result
execute if score VSC.diff_data VSC.main matches 1 run function vsc_core:craft/remove_items
execute if score VSC.diff_data VSC.main matches 1 run scoreboard players reset @s VSC.craft_recipeID

# クラフト欄が要求と全く同じ配置をしているか調べ、違うならrecipeIDを外して完成品を消す
execute if score @s VSC.craft_recipeID matches -2147483648..2147483647 run data modify storage vsc_core:main tmp.1 set from storage vsc_core:main tmp.data.Items
$execute if score @s VSC.craft_recipeID matches -2147483648..2147483647 store result score VSC.diff_data VSC.main run data modify storage vsc_core:main tmp.1 set from storage vsc_core:main recipes[$(recipeID)].require
execute if score @s VSC.craft_recipeID matches -2147483648..2147483647 if score VSC.diff_data VSC.main matches 1 run data remove block ~ ~ ~ Items[{Slot:16b}]
execute if score @s VSC.craft_recipeID matches -2147483648..2147483647 if score VSC.diff_data VSC.main matches 1 run data remove storage vsc_core:main tmp.data.result
execute if score @s VSC.craft_recipeID matches -2147483648..2147483647 if score VSC.diff_data VSC.main matches 1 run scoreboard players reset @s VSC.craft_recipeID

# スコアをリセット
scoreboard players reset VSC.diff_data VSC.main

# tmp.1をリセット
data remove storage vsc_core:main tmp.1

#>
# @private
#define score_holder VSC.diff_data