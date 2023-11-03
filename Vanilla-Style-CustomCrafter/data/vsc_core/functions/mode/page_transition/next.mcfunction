#> vsc_core:mode/page_transition/next
#
# @within vsc_core:mode/*

# モード移行のための処理
$execute store result storage vsc_core:main tmp.slot byte 1 run data get storage vsc_core:main gui.frame[$(frame)][{tag:{vsc_key:"next"}}].Slot
data modify storage vsc_core:main tmp.UUID set from entity @s UUID
function vsc_core:mode/return_item with storage vsc_core:main tmp

# GUIを切り替える
execute store result storage vsc_core:main tmp.index int 1 run scoreboard players get @s VSC.page
function vsc_core:mode/page_transition/set_recipe_list with storage vsc_core:main tmp

# 各スコアを設定する
scoreboard players add @s VSC.page 1
execute unless score @s VSC.page = VSC.NUM_PAGE VSC.main run scoreboard players set @s VSC.frame 3
execute if score @s VSC.page = VSC.NUM_PAGE VSC.main run scoreboard players set @s VSC.frame 4

# ストレージリセット
data remove storage vsc_core:main tmp