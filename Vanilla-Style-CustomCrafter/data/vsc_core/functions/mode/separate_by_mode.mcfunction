#> vsc_core:mode/separate_by_mode
#
# @within vsc_core:check

execute if score @s VSC.mode matches 0 run function vsc_core:mode/check_craft
execute if score @s VSC.mode matches 1 run function vsc_core:mode/check_recipe_list
execute if score @s VSC.mode matches 2 run function vsc_core:mode/check_recipe_individual