#> vsc_core:craft/search_recipe_loop
#
# @within vsc_core:craft/search_recipe*


# レシピの要求とクラフト欄に入っているアイテムを比較し、一致しているものを探す。見つかれば完成品として表示する
data modify storage vsc_core:main tmp.Items set from storage vsc_core:main tmp.data.Items
execute store result score VSC.diff_recipe VSC.main run data modify storage vsc_core:main tmp.Items set from storage vsc_core:main tmp.recipes[0].require
execute unless score VSC.diff_recipe VSC.main matches 1 run function vsc_core:craft/found_recipe
data remove storage vsc_core:main tmp.recipes[0]

# ループ処理用
scoreboard players add VSC.count VSC.main 1
execute if score VSC.diff_recipe VSC.main matches 1 if score VSC.count VSC.main < VSC.loop VSC.main run function vsc_core:craft/search_recipe_loop


