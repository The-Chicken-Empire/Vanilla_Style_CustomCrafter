#> vsc_core:craft/check_require
#
# @within vsc_core:craft/**

# 各スロットのアイテムの数が要求を超えているか確認
$data modify storage vsc_core:main tmp.recipe set from storage vsc_core:main recipes[$(input)]
data remove storage vsc_core:main tmp.recipe[{Slot:16b}]
data modify storage vsc_core:main tmp.invs set from storage vsc_core:main tmp.data.Items
execute store result score VSC.require_loop.loop VSC.main run data get storage vsc_core:main tmp.recipe
scoreboard players set VSC.require_loop.count VSC.main 0
execute if score VSC.require_loop.count VSC.main < VSC.require_loop.loop VSC.main run function vsc_core:craft/check_require_loop

# 全ての要求を満たしていればレシピ発見処理
execute unless score VSC.diff_recipe VSC.main matches 1 run function vsc_core:craft/found_recipe with storage vsc_core:main tmp

# スコアリセット
scoreboard players reset VSC.require_loop.count VSC.main
scoreboard players reset VSC.require_loop.loop VSC.main
scoreboard players reset VSC.tmp1 VSC.main
scoreboard players reset VSC.tmp2 VSC.main


