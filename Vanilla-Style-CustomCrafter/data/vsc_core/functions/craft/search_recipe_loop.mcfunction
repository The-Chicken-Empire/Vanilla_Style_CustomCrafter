#> vsc_core:craft/search_recipe_loop
#
# @within vsc_core:craft/search_recipe*

# レシピの要求とクラフト欄に入っているアイテムを比較し、一致しているものを探す。見つかれば完成品として表示する
data modify storage vsc_core:main tmp.Items_no_count set from storage vsc_core:main tmp.data.Items_no_count
execute store result score VSC.diff_recipe VSC.main run data modify storage vsc_core:main tmp.Items_no_count set from storage vsc_core:main tmp.recipes_no_count[0].require
execute store result storage vsc_core:main tmp.input int 1 run scoreboard players get VSC.count VSC.main
execute unless score VSC.diff_recipe VSC.main matches 1 run function vsc_core:craft/check_require with storage vsc_core:main tmp

# ループ処理用
scoreboard players add VSC.count VSC.main 1
data remove storage vsc_core:main tmp.recipes_no_count[0]
execute if score VSC.diff_recipe VSC.main matches 1 if score VSC.count VSC.main < VSC.loop VSC.main run function vsc_core:craft/search_recipe_loop


