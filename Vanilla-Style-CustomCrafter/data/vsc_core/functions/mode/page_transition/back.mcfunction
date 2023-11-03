#> vsc_core:mode/page_transition/back
#
# @within vsc_core:mode/*

# モード移行のための処理
$execute store result storage vsc_core:main tmp.slot byte 1 run data get storage vsc_core:main gui.frame[$(frame)][{tag:{vsc_key:"back"}}].Slot
data modify storage vsc_core:main tmp.UUID set from entity @s UUID
function vsc_core:mode/return_item with storage vsc_core:main tmp

# 各スコアを設定する
scoreboard players remove @s VSC.page 1
execute if score @s VSC.page matches 1 run scoreboard players set @s VSC.frame 2
execute unless score @s VSC.page matches 1 run scoreboard players set @s VSC.frame 3

# GUIを切り替える
scoreboard players operation VSC.tmp VSC.main = @s VSC.page
scoreboard players remove VSC.tmp VSC.main 1
execute store result storage vsc_core:main tmp.index int 1 run scoreboard players get VSC.tmp VSC.main
function vsc_core:mode/page_transition/set_recipe_list with storage vsc_core:main tmp

# スコアリセット
scoreboard players reset VSC.tmp VSC.main

# ストレージリセット
data remove storage vsc_core:main tmp

#>
# @private
#define score_holder VSC.tmp