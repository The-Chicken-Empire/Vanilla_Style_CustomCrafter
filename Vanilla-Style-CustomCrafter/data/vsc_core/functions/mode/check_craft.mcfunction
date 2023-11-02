#> vsc_core:mode/check_craft
#
# @within vsc_core:mode/separate_by_mode

# 遷移用アイテムがなかったらクリックしたと考えて処理をする
execute unless data block ~ ~ ~ Items[{tag:{vsc_key:"recipe"}}] run function vsc_core:mode/check_craft/to_recipe

#>
# @private
#define score_holder VSC.recipe_slot 