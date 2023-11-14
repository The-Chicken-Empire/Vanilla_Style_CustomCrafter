#> vsc_core:init/recipe
#
# @within vsc_core:load

data modify storage vsc_core:main recipes set value []
summon chest_minecart ~ -100 ~ {NoGravity:1b,Invulnerable:1b,Tags:["VSC.container"]}

execute store result score vsc.loop VSC.main run data get storage vsc_core:main init_recipe
scoreboard players set vsc.count VSC.main 0
execute if score vsc.count VSC.main < vsc.loop VSC.main run function vsc_core:init/recipe_loop

kill @e[tag=VSC.container,limit=1,type=chest_minecart]

scoreboard players reset vsc.count VSC.main
scoreboard players reset vsc.loop VSC.main

#> 
# @within vsc_core:init/recipe
# @within vsc_core:init/recipe_loop
  #define score_holder vsc.loop
  #define score_holder vsc.count
  #define tag VSC.container