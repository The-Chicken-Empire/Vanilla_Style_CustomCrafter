#> vsc_core:craft/found_recipe
#
# @within vsc_core:craft/search_recipe_loop

# 完成品スロットにアイテムが入っていた場合はドロップアイテムとして召喚し、完成品スロットからは消す
execute if data storage vsc_core:main tmp.data.result run function vsc_core:craft/return

# 完成品を表示
data modify block ~ ~ ~ Items append from storage vsc_core:main tmp.recipes[0].result

# 表示しているレシピのIDを記録する
scoreboard players operation @s VSC.craft_recipeID = VSC.count VSC.main

