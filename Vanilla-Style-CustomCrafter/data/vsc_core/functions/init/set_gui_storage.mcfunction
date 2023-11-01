#> vsc_core:init/set_gui_storage
#
# @within vsc_core:load

# 登録されたレシピをもとにguiやレシピ表示用のストレージを作成する

# レシピストレージの数をもとに最大ページ数を計算する
execute store result score VSC.num_recipes VSC.main run data get storage vsc_core:main recipes
scoreboard players operation VSC.num_page VSC.main = VSC.num_recipes VSC.main
execute unless score VSC.num_page VSC.main matches 0 run scoreboard players remove VSC.num_page VSC.main 1
scoreboard players operation VSC.num_page VSC.main /= #VSC.15 VSC.main
scoreboard players add VSC.num_page VSC.main 1

# 最後のページのguiを作成する
data modify storage vsc_core:main gui.recipe_list set value []
data modify storage vsc_core:main tmp.recipe_list set from storage vsc_core:main recipes
scoreboard players set VSC.count VSC.main 0
execute if score VSC.count VSC.main < VSC.num_page VSC.main run function vsc_core:init/set_recipe_list

# 個別のレシピ表示ストレージの作成を行う
data modify storage vsc_core:main gui.recipes set value []
data modify storage vsc_core:main tmp.recipes set from storage vsc_core:main recipes
scoreboard players set VSC.count VSC.main 0
execute if score VSC.count VSC.main < VSC.num_recipes VSC.main run function vsc_core:init/set_recipe_individual

# スコアリセット
scoreboard players reset VSC.count VSC.main
scoreboard players reset VSC.num_page VSC.main
scoreboard players reset VSC.num_recipes VSC.main

# ストレージリセット
data remove storage vsc_core:main tmp

#> 
# 
# @within vsc_core:init**
  #define score_holder VSC.num_page
  #define score_holder VSC.num_recipes
  #define score_holder VSC.count