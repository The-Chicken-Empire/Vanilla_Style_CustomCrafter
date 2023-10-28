#>  vsc:break_recipe_loop
#
# @within vsc:break_recipe

scoreboard players add @s VSC.break_recipe_loop 1

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["vsc_return_item"]}
data modify entity @e[type=item,tag=vsc_return_item,limit=1,distance=..1,sort=nearest] Item set from storage minecraft:vsc_customcrafter temp2[0]

tag @e[type=item,tag=vsc_return_item,limit=1,distance=..1,sort=nearest] remove vsc_return_item
data remove storage minecraft:vsc_customcrafter temp2[0]

execute if score @s VSC.break_recipe_loop < @s VSC.break_recipe_st run function vsc:break_recipe_loop