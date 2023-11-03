#> vsc_core:mode/check_recipe_individual
#
# @within vsc_core:mode/separate_by_mode

# 遷移用アイテムがなかったらクリックしたと考えて処理をする
execute unless data block ~ ~ ~ Items[{tag:{vsc_key:"craft"}}] run execute store result storage vsc_core:main tmp.frame int 1 run scoreboard players get @s VSC.frame
execute unless data block ~ ~ ~ Items[{tag:{vsc_key:"craft"}}] run function vsc_core:mode/page_transition/craft with storage vsc_core:main tmp

# 遷移用アイテムがなかったらクリックしたと考えて処理をする
execute unless data block ~ ~ ~ Items[{tag:{vsc_key:"recipe"}}] run execute store result storage vsc_core:main tmp.frame int 1 run scoreboard players get @s VSC.frame
execute unless data block ~ ~ ~ Items[{tag:{vsc_key:"recipe"}}] run function vsc_core:mode/page_transition/recipe with storage vsc_core:main tmp

#>
# @private
#define score_holder VSC.recipe_slot