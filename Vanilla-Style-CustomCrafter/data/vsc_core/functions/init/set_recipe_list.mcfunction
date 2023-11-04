#> vsc_core:init/set_recipe_list
#
# @within vsc_core:init/set_gui_storage
# @within vsc_core:init/set_recipe_list

# フレーム部分、要求部分、クラフト結果部分を全て結合

# 現在のループ数を元に配置場所、ページ数を算出
scoreboard players operation VSC.page_num VSC.main = VSC.count VSC.main
scoreboard players operation VSC.slot_num VSC.main = VSC.count VSC.main
scoreboard players operation VSC.page_num VSC.main /= #VSC.15 VSC.main
scoreboard players operation VSC.slot_num VSC.main %= #VSC.15 VSC.main
scoreboard players add VSC.page_num VSC.main 1

# 配置場所が0番ならページを追加
execute if score VSC.slot_num VSC.main matches 0 if score VSC.page_num VSC.main matches 1 if score VSC.NUM_PAGE VSC.main matches 1 run data modify storage vsc_core:main gui.recipe_list append from storage vsc_core:main gui.frame[1]
execute if score VSC.slot_num VSC.main matches 0 if score VSC.page_num VSC.main matches 1 unless score VSC.NUM_PAGE VSC.main matches 1 run data modify storage vsc_core:main gui.recipe_list append from storage vsc_core:main gui.frame[2]
execute if score VSC.slot_num VSC.main matches 0 unless score VSC.page_num VSC.main matches 1 unless score VSC.page_num VSC.main = VSC.NUM_PAGE VSC.main run data modify storage vsc_core:main gui.recipe_list append from storage vsc_core:main gui.frame[3]
execute if score VSC.slot_num VSC.main matches 0 unless score VSC.page_num VSC.main matches 1 if score VSC.page_num VSC.main = VSC.NUM_PAGE VSC.main run data modify storage vsc_core:main gui.recipe_list append from storage vsc_core:main gui.frame[4]

# カスタム作業台内部でのスロット番号を求める
scoreboard players operation VSC.slot_tmp VSC.main = VSC.slot_num VSC.main
scoreboard players operation VSC.slot_num VSC.main /= #VSC.5 VSC.main 
scoreboard players operation VSC.slot_tmp VSC.main %= #VSC.5 VSC.main 
scoreboard players operation VSC.slot_num VSC.main *= #VSC.9 VSC.main 
scoreboard players operation VSC.slot_num VSC.main += VSC.slot_tmp VSC.main
scoreboard players add VSC.slot_num VSC.main 2

# 求めたスロット番号に表示用にレシピの完成品データを入れる
execute store result storage vsc_core:main tmp.slot_num int 1 run scoreboard players get VSC.slot_num VSC.main
function vsc_core:init/set_recipe_list_helper with storage vsc_core:main tmp

# スコアリセット
scoreboard players reset VSC.page_num VSC.main
scoreboard players reset VSC.slot_num VSC.main
scoreboard players reset VSC.slot_tmp VSC.main

# ループ用処理部分
data remove storage vsc_core:main tmp.recipe_list[0]
scoreboard players add VSC.count VSC.main 1
execute if score VSC.count VSC.main < VSC.NUM_RECIPES VSC.main run function vsc_core:init/set_recipe_list

#> 
# 
# @within vsc_core:init/set_recipe_list**
  #define score_holder VSC.page_num
  #define score_holder VSC.slot_num
  #define score_holder VSC.slot_tmp