#> vsc_core:break/recovery
#
# @within vsc_core:break/check

# 個別のストレージから保存していたアイテムデータを取得してきて、ループによりドロップアイテムとして召喚する
$data modify storage vsc_core:main tmp.items set from storage vsc_core:main items[{UUID:$(UUID)}].items
data remove storage vsc_core:main tmp.items[{tag:{vsc_guiitem:1}}]
data remove storage vsc_core:main tmp.items[{Slot:16b}]

execute store result score VSC.loop VSC.main run data get storage vsc_core:main tmp.items
scoreboard players set VSC.count VSC.main 0
execute if score VSC.count VSC.main < VSC.loop VSC.main run function vsc_core:break/recovery_loop

#ストレージ削除
$data remove storage vsc_core:main items[{UUID:$(UUID)}]

# スコアリセット
scoreboard players reset VSC.count VSC.main
scoreboard players reset VSC.loop VSC.main

#>
# @within vsc_core:break/**
# @within vsc_core:break/**
  #define score_holder VSC.loop
  #define score_holder VSC.count