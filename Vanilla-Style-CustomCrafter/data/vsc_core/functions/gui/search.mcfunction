#> vsc_core:gui/search
#
# @within vsc_core:gui/check_craft

# Itemsの内容をコピー
data modify storage vsc_core:main tmp.1 set from storage vsc_core:main tmp.data.Items

# クラフト欄のデータを削除
data remove storage vsc_core:main tmp.1[{Slot:1b}]
data remove storage vsc_core:main tmp.1[{Slot:2b}]
data remove storage vsc_core:main tmp.1[{Slot:3b}]
data remove storage vsc_core:main tmp.1[{Slot:10b}]
data remove storage vsc_core:main tmp.1[{Slot:11b}]
data remove storage vsc_core:main tmp.1[{Slot:12b}]
data remove storage vsc_core:main tmp.1[{Slot:19b}]
data remove storage vsc_core:main tmp.1[{Slot:20b}]
data remove storage vsc_core:main tmp.1[{Slot:21b}]

# ここまででtmp.1にはGUI表示部分のguiitem以外のみが残っている。再起処理で全てドロップアイテムとして召喚し、tmp.1とItemsから削除する
execute store result score VSC.loop VSC.main run data get storage vsc_core:main tmp.1
scoreboard players set VSC.count VSC.main 0
execute if score VSC.count VSC.main < VSC.loop VSC.main run function vsc_core:gui/return with storage vsc_core:main tmp.1[0]

# GUI部分を上書きして元に戻す 
data modify block ~ ~ ~ Items append from storage vsc_core:main gui.frame[0][{}]

# スコアホルダー定義
#>
# @within vsc_core:gui/*
  #define score_holder VSC.loop
  #define score_holder VSC.count