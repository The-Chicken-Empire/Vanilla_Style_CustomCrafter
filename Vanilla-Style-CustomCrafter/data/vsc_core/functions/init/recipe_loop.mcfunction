#> vsc_core:init/recipe_loop
#
# @within vsc_core:init/recipe
# @within vsc_core:init/recipe_loop

# damageなどの設定しなくても取得できるタグを生成するために、一度チェストトロッコに格納する
data modify entity @e[type=chest_minecart,limit=1,tag=VSC.container] Items set from storage vsc_core:main init_recipe[0]
data modify storage vsc_core:main init_recipe[0] set from entity @e[type=chest_minecart,limit=1,tag=VSC.container] Items

data modify storage vsc_core:main recipes append value {}
data modify storage vsc_core:main recipes[-1].require set value []

data modify storage vsc_core:main recipes[-1].require append from storage vsc_core:main init_recipe[0][{Slot:1b}]
data modify storage vsc_core:main recipes[-1].require append from storage vsc_core:main init_recipe[0][{Slot:2b}]
data modify storage vsc_core:main recipes[-1].require append from storage vsc_core:main init_recipe[0][{Slot:3b}]
data modify storage vsc_core:main recipes[-1].require append from storage vsc_core:main init_recipe[0][{Slot:10b}]
data modify storage vsc_core:main recipes[-1].require append from storage vsc_core:main init_recipe[0][{Slot:11b}]
data modify storage vsc_core:main recipes[-1].require append from storage vsc_core:main init_recipe[0][{Slot:12b}]
data modify storage vsc_core:main recipes[-1].require append from storage vsc_core:main init_recipe[0][{Slot:19b}]
data modify storage vsc_core:main recipes[-1].require append from storage vsc_core:main init_recipe[0][{Slot:20b}]
data modify storage vsc_core:main recipes[-1].require append from storage vsc_core:main init_recipe[0][{Slot:21b}]

data modify storage vsc_core:main recipes[-1].result set from storage vsc_core:main init_recipe[0][{Slot:16b}]

data remove storage vsc_core:main init_recipe[0]
scoreboard players add vsc.count VSC.main 1
execute if score vsc.count VSC.main < vsc.loop VSC.main run function vsc_core:init/recipe_loop


