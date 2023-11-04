#> vsc_core:mode/page_transition/craft
#
# @within vsc_core:mode/**
# @within vsc_core:load

# モード移行のための処理
execute store result storage vsc_core:main tmp.slot byte 1 run data get storage vsc_core:main gui.frame[0][{tag:{vsc_key:"craft"}}].Slot
data modify storage vsc_core:main tmp.UUID set from entity @s UUID
function vsc_core:mode/return_item with storage vsc_core:main tmp
scoreboard players set @s VSC.mode 0
scoreboard players set @s VSC.frame 0
scoreboard players reset @s VSC.page
scoreboard players reset @s VSC.recipe_recipeIndex

# クラフトモードに入る前に保存していたアイテムを戻す
function vsc_core:mode/recovery_items with storage vsc_core:main tmp

# ページ遷移をしたことを示すスコアを1に
scoreboard players set VSC.page_transition VSC.main 1


# ストレージリセット
data remove storage vsc_core:main tmp