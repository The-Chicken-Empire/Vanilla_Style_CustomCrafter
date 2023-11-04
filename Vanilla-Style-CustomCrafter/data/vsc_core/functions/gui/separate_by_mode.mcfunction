#> vsc_core:gui/separate_by_mode
#
# @within vsc_core:check

execute if score @s VSC.mode matches 0 run function vsc_core:gui/check_craft
execute if score @s VSC.mode matches 1 run function vsc_core:gui/check_recipe_list
execute if score @s VSC.mode matches 2 run function vsc_core:gui/check_recipe_individual

# スコアホルダー定義
#>
# @within vsc_core:gui/*
  #define score_holder VSC.loop
  #define score_holder VSC.count