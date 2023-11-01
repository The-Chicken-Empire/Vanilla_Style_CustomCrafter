#> vsc_core:init/set_recipe_individual
#
# @within vsc_core:init/set_gui_storage
# @within vsc_core:init/set_recipe_individual

# フレーム部分、要求部分、クラフト結果部分を全て結合
data modify storage vsc_core:main gui.recipes append from storage vsc_core:main gui.frame[5]
data modify storage vsc_core:main gui.recipes[-1] prepend from storage vsc_core:main tmp.recipes[0].require[{}]
data modify storage vsc_core:main gui.recipes[-1] prepend from storage vsc_core:main tmp.recipes[0].result

# 表示用アイテムのタグをつけておく
data modify storage vsc_core:main gui.recipes[-1][{}].tag.vsc_guiitem set value 1

# ループ用処理部分
data remove storage vsc_core:main tmp.recipes[0]
scoreboard players add VSC.count VSC.main 1
execute if score VSC.count VSC.main < VSC.num_recipes VSC.main run function vsc_core:init/set_recipe_individual

