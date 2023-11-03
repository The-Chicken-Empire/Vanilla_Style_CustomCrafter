#> vsc_core:load
#
# @within minecraft:load

# ------------------------------ 処理を行う部分 ------------------------------#

#スコアの初期化
function vsc_core:init/score

# ストレージの初期化
function vsc_core:init/recipe
function vsc_core:init/frame
function vsc_core:init/set_gui_storage
execute unless data storage vsc_core:main items run data modify storage vsc_core:main items set value []

# 開かれているカスタム作業台のページを一旦クラフト画面に戻す。(レシピが変更されるとおそらくバグるので)
execute as @e[type=minecraft:armor_stand,tag=VSC.core,tag=VSC.placed] at @s run function vsc_core:mode/page_transition/craft

# 初期化終了メッセージ
tellraw @a {"text": "カスタムレシピの初期化が完了しました"}


# ------------------------------ 宣言を行う部分 ------------------------------#

# -------------------- ストレージ --------------------#

#> 
# データを格納するためのストレージ
# vsc_core:main recipes でレシピのリストにアクセス
# vsc_core:main tmp に一時的なストレージを格納
# @internal
#define storage vsc_core:main

# -------------------- エンティティタグ --------------------#

#>
# カスタム作業台管理用防具立てにつける
# @internal
#define tag VSC.core

#>
# カスタム作業台管理用の防具立ての設置処理済みであることを示す
# @within vsc_core:*
# @within vsc_core:break/**
# @within vsc_core:place/**
#define tag VSC.placed

#>
# デバッグ時につけるタグ
# @internal
#define tag VSC.op

# -------------------- スコアホルダー --------------------#

#> 
# @internal
  #define score_holder VSC.NUM_PAGE
  #define score_holder VSC.NUM_RECIPES

#>
# 定数
# @internal
  #define score_holder #VSC.15
  #define score_holder #VSC.9
  #define score_holder #VSC.5