#> vsc_core:load
#
# @within minecraft:load

# ------------------------------ 処理を行う部分 ------------------------------#

function vsc_core:init/score

# ストレージの初期化

function vsc_core:init/recipe
function vsc_core:init/frame
function vsc_core:init/set_gui_storage

# 初期化終了メッセージ
tellraw @a {"text": "カスタムレシピの初期化が完了"}


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
# 定数
# @internal
  #define score_holder #VSC.15
  #define score_holder #VSC.9
  #define score_holder #VSC.5