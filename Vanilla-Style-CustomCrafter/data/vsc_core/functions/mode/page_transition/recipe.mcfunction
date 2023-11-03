#> vsc_core:mode/page_transition/recipe
#
# @within vsc_core:mode/*

# モード移行のための処理
$execute store result storage vsc_core:main tmp.slot byte 1 run data get storage vsc_core:main gui.frame[$(frame)][{tag:{vsc_key:"recipe"}}].Slot
data modify storage vsc_core:main tmp.UUID set from entity @s UUID
function vsc_core:mode/return_item with storage vsc_core:main tmp

#もし、クラフト画面からの遷移であればストレージにアイテムを保存
execute if score @s VSC.mode matches 0 run function vsc_core:mode/page_transition/store_items with storage vsc_core:main tmp

# 各スコアを設定する
scoreboard players set @s VSC.mode 1
scoreboard players set @s VSC.page 1
execute if score @s VSC.page = VSC.NUM_PAGE VSC.main run scoreboard players set @s VSC.frame 1
execute unless score @s VSC.page = VSC.NUM_PAGE VSC.main run scoreboard players set @s VSC.frame 2

# GUIを切り替える
data modify block ~ ~ ~ Items set from storage vsc_core:main gui.recipe_list[0]