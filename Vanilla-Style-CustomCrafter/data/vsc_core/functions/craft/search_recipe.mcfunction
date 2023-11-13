#> vsc_core:craft/search_recipe
#
# @within vsc_core:craft/check

# クラフト欄と一致するレシピを検索する
data modify storage vsc_core:main tmp.recipes_no_count set from storage vsc_core:main recipes_no_count
execute store result score VSC.loop VSC.main run data get storage vsc_core:main recipes_no_count
data modify storage vsc_core:main tmp.data.Items_no_count set from storage vsc_core:main tmp.data.Items
data remove storage vsc_core:main tmp.data.Items_no_count[{}].Count
scoreboard players set VSC.count VSC.main 0
execute if score VSC.count VSC.main < VSC.loop VSC.main run function vsc_core:craft/search_recipe_loop

# スコアリセット
scoreboard players reset VSC.loop VSC.main
scoreboard players reset VSC.count VSC.main
scoreboard players reset VSC.diff_data VSC.main

# スコアホルダー定義
#>
# @within vsc_core:craft/search_recipe*
# @within vsc_core:craft/found_recipe
  #define score_holder VSC.loop
  #define score_holder VSC.count
#>
# @within vsc_core:craft/**
  #define score_holder VSC.diff_recipe