#> vsc_core:mode/check_recipe_list/individual_loop
#
# @within vsc_core:mode/check_recipe_list/individual_loop
# @within vsc_core:mode/check_recipe_list/individual

# まず、番号からスロット番号を求め、スロット番号にあるはずのアイテムがなければ遷移処理を行う

scoreboard players operation VSC.slot_num VSC.main = VSC.count VSC.main
scoreboard players operation VSC.slot_tmp VSC.main = VSC.slot_num VSC.main
scoreboard players operation VSC.slot_num VSC.main /= #VSC.5 VSC.main 
scoreboard players operation VSC.slot_tmp VSC.main %= #VSC.5 VSC.main 
scoreboard players operation VSC.slot_num VSC.main *= #VSC.9 VSC.main 
scoreboard players operation VSC.slot_num VSC.main += VSC.slot_tmp VSC.main
scoreboard players add VSC.slot_num VSC.main 2

# スロットをチェック
execute store result storage vsc_core:main tmp.slot_num int 1 run scoreboard players get VSC.slot_num VSC.main
execute store result storage vsc_core:main tmp.index int 1 run scoreboard players get VSC.index VSC.main
function vsc_core:mode/check_recipe_list/check_slot with storage vsc_core:main tmp

# スコアリセット
scoreboard players reset VSC.slot_num VSC.main
scoreboard players reset VSC.slot_tmp VSC.main

# ループ処理
scoreboard players add VSC.index VSC.main 1
scoreboard players add VSC.count VSC.main 1
execute if score VSC.page_transition VSC.main matches 0 if score VSC.count VSC.main < VSC.loop VSC.main run function vsc_core:mode/check_recipe_list/individual_loop

#>
# @private
  #define score_holder VSC.slot_num
  #define score_holder VSC.slot_tmp