#> vsc_core:break/delete_result
#
# @within vsc_core:break/check

# カスタム作業台からドロップしたアイテムを全て削除
execute as @e[type=item,distance=..1] unless data entity @s Thrower run kill @s

# 表示していたレシピの要求素材データを持ってくる
$data modify storage vsc_core:main tmp.require set from storage vsc_core:main recipes[$(recipeID)].require

# ループ操作。要求素材部分だけドロップアイテムとしてその場に召喚する。
execute store result score VSC.loop VSC.main run data get storage vsc_core:main tmp.require
scoreboard players set VSC.count VSC.main 0
execute if score VSC.count VSC.main < VSC.loop VSC.main run function vsc_core:break/delete_result_loop

# スコアリセット
scoreboard players reset VSC.loop VSC.main
scoreboard players reset VSC.count VSC.main

# ストレージリセット
data remove storage vsc_core:main tmp

# 定義部分
#> 
# @within vsc_core:break/delete_result*
  #define score_holder VSC.loop
  #define score_holder VSC.count