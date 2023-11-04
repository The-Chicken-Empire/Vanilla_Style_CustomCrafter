#> vsc_core:mode/page_transition/individual
#
# @within vsc_core:mode/**

# モード移行のための処理
function vsc_core:mode/return_item with storage vsc_core:main tmp

# GUIを切り替える
$data modify block ~ ~ ~ Items set from storage vsc_core:main gui.recipes[$(index)]

# 各スコアを設定する
$scoreboard players set @s VSC.recipe_recipeIndex $(index)
scoreboard players set @s VSC.frame 5
scoreboard players set @s VSC.mode 2

# ページ遷移をしたことを示すスコアを1に
scoreboard players set VSC.page_transition VSC.main 1

# ストレージリセット
data remove storage vsc_core:main tmp



