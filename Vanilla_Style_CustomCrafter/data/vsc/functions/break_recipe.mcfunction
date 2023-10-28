#> vsc:break_recipe
#
# @within vsc:break_customcrafter

$data modify storage minecraft:vsc_customcrafter temp2 set from storage minecraft:vsc_customcrafter recipes[$(temp)].require

execute store result score @s VSC.break_recipe_st run data get storage minecraft:vsc_customcrafter temp2
scoreboard players set @s VSC.break_recipe_loop 0
execute if score @s VSC.break_recipe_loop < @s VSC.break_recipe_st run function vsc:break_recipe_loop

# スコアリセット
scoreboard players reset @s VSC.break_recipe_st
scoreboard players reset @s VSC.break_recipe_loop