#> vsc_core:gui/reset_gui
#
# @within vsc_core:gui/check_recipe_individual
# @within vsc_core:gui/check_recipe_list

$execute if score @s VSC.mode matches 1 run data modify block ~ ~ ~ Items set from storage vsc_core:main gui.recipe_list[$(index)]
$execute if score @s VSC.mode matches 2 run data modify block ~ ~ ~ Items set from storage vsc_core:main gui.recipes[$(index)]
