#> vsc_core:init/set_gui_storage
#
# @within vsc_core:load

# 登録されたレシピをもとにguiやレシピ表示用のストレージを作成する

# レシピストレージの数をもとに最大ページ数を計算する
execute store result score VSC.NUM_RECIPES VSC.main run data get storage vsc_core:main recipes
scoreboard players operation VSC.NUM_PAGE VSC.main = VSC.NUM_RECIPES VSC.main
execute unless score VSC.NUM_PAGE VSC.main matches 0 run scoreboard players remove VSC.NUM_PAGE VSC.main 1
scoreboard players operation VSC.NUM_PAGE VSC.main /= #VSC.15 VSC.main
scoreboard players add VSC.NUM_PAGE VSC.main 1

# 最後のページのguiを作成する
data modify storage vsc_core:main gui.recipe_list set value []
data modify storage vsc_core:main tmp.recipe_list set from storage vsc_core:main recipes
scoreboard players set VSC.count VSC.main 0
execute if score VSC.count VSC.main < VSC.NUM_PAGE VSC.main run function vsc_core:init/set_recipe_list

# 個別のレシピ表示ストレージの作成を行う
data modify storage vsc_core:main gui.recipes set value []
data modify storage vsc_core:main tmp.recipes set from storage vsc_core:main recipes
scoreboard players set VSC.count VSC.main 0
execute if score VSC.count VSC.main < VSC.NUM_RECIPES VSC.main run function vsc_core:init/set_recipe_individual

# スコアリセット
scoreboard players reset VSC.count VSC.main

# ストレージリセット
data remove storage vsc_core:main tmp

#> 
# 
# @within vsc_core:init**
  #define score_holder VSC.count