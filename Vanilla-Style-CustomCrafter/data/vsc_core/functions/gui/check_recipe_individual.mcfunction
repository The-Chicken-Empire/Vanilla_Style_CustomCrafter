#> vsc_core:gui/check_recipe_individual
#
# @within vsc_core:gui/separate_by_mode

# 内容をコピーし、guiitemタグのついているアイテムを消すことにより、異物だけを残す
  data modify storage vsc_core:main tmp.1 set from block ~ ~ ~ Items
  data remove storage vsc_core:main tmp.1[{tag:{vsc_guiitem:1}}]

  #残ったアイテムをドロップとして召喚する
execute store result score VSC.loop VSC.main run data get storage vsc_core:main tmp.1
scoreboard players set VSC.count VSC.main 0
execute if score VSC.count VSC.main < VSC.loop VSC.main run function vsc_core:gui/return with storage vsc_core:main tmp.1[0]

# カスタム作業台内を上書きする
  execute store result storage vsc_core:main tmp.index int 1 run scoreboard players get @s VSC.recipe_recipeIndex
  function vsc_core:gui/reset_gui with storage vsc_core:main tmp

# tmp.1ストレージを削除
  data remove storage vsc_core:main tmp.1

# スコアをリセット
  scoreboard players reset VSC.loop VSC.main
  scoreboard players reset VSC.count VSC.main
