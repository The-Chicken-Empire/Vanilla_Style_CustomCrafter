#> vsc_core:mode/check_recipe_list/individual
#
# @within vsc_core:mode/check_recipe_list



scoreboard players operation VSC.index VSC.main = @s VSC.page
execute store result storage vsc_core:main tmp.pageindex int 1 run scoreboard players remove VSC.index VSC.main 1
scoreboard players operation VSC.index VSC.main *= #VSC.15 VSC.main

execute if score @s VSC.frame matches 1 run scoreboard players operation VSC.loop VSC.main = VSC.NUM_RECIPES VSC.main
execute if score @s VSC.frame matches 1 run scoreboard players operation VSC.loop VSC.main %= #VSC.15 VSC.main
execute if score @s VSC.frame matches 4 run scoreboard players operation VSC.loop VSC.main = VSC.NUM_RECIPES VSC.main
execute if score @s VSC.frame matches 4 run scoreboard players operation VSC.loop VSC.main %= #VSC.15 VSC.main
execute if score @s VSC.frame matches 2..3 run scoreboard players set VSC.loop VSC.main 15
execute run scoreboard players set VSC.count VSC.main 0
execute if score VSC.count VSC.main < VSC.loop VSC.main run function vsc_core:mode/check_recipe_list/individual_loop

# リセット
scoreboard players reset VSC.count VSC.main
scoreboard players reset VSC.loop VSC.main
scoreboard players reset VSC.index VSC.main

#>
# @within vsc_core:mode/check_recipe_list/individual_loop
# @within vsc_core:mode/check_recipe_list/individual
  #define score_holder VSC.loop
  #define score_holder VSC.count
  #define score_holder VSC.index