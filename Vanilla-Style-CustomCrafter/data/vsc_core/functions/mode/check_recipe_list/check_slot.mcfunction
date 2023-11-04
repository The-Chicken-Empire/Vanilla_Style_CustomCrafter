#> vsc_core:mode/check_recipe_list/check_slot
#
# @within vsc_core:mode/check_recipe_list/individual_loop

# 指定のスロットに表示用アイテムがなければ、クリックしたとみなして実行
$data modify storage vsc_core:main tmp.items set from storage vsc_core:main gui.recipe_list[$(pageindex)][{Slot:$(slot_num)b}]
$execute store success score VSC.success VSC.main run data modify storage vsc_core:main tmp.items set from block ~ ~ ~ Items[{Slot:$(slot_num)b}]
$execute unless data block ~ ~ ~ Items[{Slot:$(slot_num)b}] run scoreboard players set VSC.success VSC.main 1
execute if score VSC.success VSC.main matches 1 run function vsc_core:mode/page_transition/individual with storage vsc_core:main tmp

scoreboard players reset VSC.success

#>
# @private
  #define score_holder VSC.success