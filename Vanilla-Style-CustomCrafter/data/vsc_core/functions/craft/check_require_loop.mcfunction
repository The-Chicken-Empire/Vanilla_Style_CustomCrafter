#> vsc_core:craft/check_require_loop
# 
# @within vsc_core:craft/check_require
# @within vsc_core:craft/check_require_loop
# @within vsc_core:craft/check_pickup

execute store result score VSC.tmp1 VSC.main run data get storage vsc_core:main tmp.recipe[0].Count
execute store result score VSC.tmp2 VSC.main run data get storage vsc_core:main tmp.invs[0].Count
execute unless score VSC.tmp1 VSC.main <= VSC.tmp2 VSC.main run scoreboard players set VSC.diff_recipe VSC.main 1

scoreboard players add VSC.require_loop.count VSC.main 1
data remove storage vsc_core:main tmp.recipe[0]
data remove storage vsc_core:main tmp.invs[0]
execute if score VSC.require_loop.count VSC.main < VSC.require_loop.loop VSC.main unless score VSC.diff_recipe VSC.main matches 1 run function vsc_core:craft/check_require_loop

#>
# @within vsc_core:craft/**
  #define score_holder VSC.tmp1
  #define score_holder VSC.tmp2
  #define score_holder VSC.require_loop.count
  #define score_holder VSC.require_loop.loop