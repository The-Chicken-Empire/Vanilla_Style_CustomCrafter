#> vsc_core:gui/check_craft
#
# @within vsc_core:gui/separate_by_mode

# 操作関連の処理は先にしているので、レシピ画面移動アイテムを触った場合のことは考えない

# カスタム作業台の内部インベントリのデータをコピー
data modify storage vsc_core:main tmp.data.Items set from block ~ ~ ~ Items

# Itemsからguiアイテム部分を削除する。また、その時の削除結果を保存する
execute store result score VSC.datasize VSC.main run data remove storage vsc_core:main tmp.data.Items[{tag:{vsc_guiitem:1}}] 

# 完成品スロットのデータを取得し、Itemsから削除
data modify storage vsc_core:main tmp.data.result set from storage vsc_core:main tmp.data.Items[{Slot:16b}]
data remove storage vsc_core:main tmp.data.Items[{Slot:16b}]

# 削除結果が17(gui表示用スロット全てにguiアイテムが入っている状態)でないならgui処理を行う
execute unless score VSC.datasize VSC.main matches 17 run function vsc_core:gui/search

# ここまでの処理でItemsにはクラフト欄のデータしか残っていないため、craft側の処理に利用できる

# tmp.1スコアを削除
data remove storage vsc_core:main tmp.1

# スコアをリセット
scoreboard players reset VSC.datasize VSC.main

# スコアホルダーの定義
#> 
# @private
#define score_holder VSC.datasize