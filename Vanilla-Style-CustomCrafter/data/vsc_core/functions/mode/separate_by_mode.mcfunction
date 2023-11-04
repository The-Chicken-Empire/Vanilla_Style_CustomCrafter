#> vsc_core:mode/separate_by_mode
#
# @within vsc_core:check

scoreboard players set VSC.page_transition VSC.main 0

execute if score VSC.page_transition VSC.main matches 0 if score @s VSC.mode matches 0 run function vsc_core:mode/check_craft
execute if score VSC.page_transition VSC.main matches 0 if score @s VSC.mode matches 1 run function vsc_core:mode/check_recipe_list
execute if score VSC.page_transition VSC.main matches 0 if score @s VSC.mode matches 2 run function vsc_core:mode/check_recipe_individual

scoreboard players reset VSC.page_transition VSC.main

#>
# ページ遷移処理を行なったか
# vsc_core:mode/**
#define score_holder VSC.page_transition