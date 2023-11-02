#> vsc_core:init/score
#
# @within vsc_core:load

#>
# 主な操作に使用するスコア
# @internal
scoreboard objectives add VSC.main dummy
#>
# 現在カスタム作業台が表示しているページ。
# @internal
scoreboard objectives add VSC.page dummy
#>
# 現在カスタム作業台のモード
# @internal
scoreboard objectives add VSC.mode dummy
#>
# レシピ表示モードで何ページ目を表示しているか
# @internal
scoreboard objectives add VSC.recipe_recipeID dummy
#>
# クラフトモードにおいて現在カスタム作業台が表示しているレシピのインデックス。  
# 設定されていない場合はレシピ表示を行っていない。
# @internal
scoreboard objectives add VSC.craft_recipeID dummy

# 定数スコアを設定
scoreboard players set #VSC.15 VSC.main 15
scoreboard players set #VSC.9 VSC.main 9
scoreboard players set #VSC.5 VSC.main 5