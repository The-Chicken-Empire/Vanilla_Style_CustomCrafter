#> vsc_core:craft/check
#
# @within vsc_core:check

# クラフト結果を表示していた場合の処理
# マクロを呼び出して該当スロットのアイテムから比較
execute if score @s VSC.craft_recipeID matches -2147483648..2147483647 store result storage vsc_core:main tmp.recipeID int 1 run scoreboard players get @s VSC.craft_recipeID
execute if score @s VSC.craft_recipeID matches -2147483648..2147483647 run function vsc_core:craft/check_pickup with storage vsc_core:main tmp

# クラフト結果を表示していないなら、クラフト欄と一致するアイテムがあるか調べ表示する
execute unless score @s VSC.craft_recipeID matches -2147483648..2147483647 run function vsc_core:craft/search_recipe

# tmp.recipeIDストレージをリセットする
data remove storage vsc_core:main tmp

