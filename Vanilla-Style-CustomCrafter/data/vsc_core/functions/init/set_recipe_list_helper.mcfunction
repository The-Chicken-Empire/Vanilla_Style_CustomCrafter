#> vsc_core:init/set_recipe_list_helper
#
# @within vsc_core:init/set_recipe_list

data modify storage vsc_core:main gui.recipe_list[-1] prepend from storage vsc_core:main tmp.recipe_list[0].result
$data modify storage vsc_core:main gui.recipe_list[-1][0].Slot set value $(slot_num)b

# 表示用アイテムのタグをつけておく
data modify storage vsc_core:main gui.recipe_list[-1][0].tag.vsc_guiitem set value 1
