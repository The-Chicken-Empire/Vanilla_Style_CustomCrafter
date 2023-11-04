#> vsc_core:mode/check_recipe_list
#
# @within vsc_core:mode/separate_by_mode

# クラフトモードへの遷移は共通なのでここでしてしまう
execute unless data block ~ ~ ~ Items[{tag:{vsc_key:"craft"}}] run function vsc_core:mode/page_transition/craft

# 現在の表示フレーム番号から行う操作を決定する

# # フレーム番号1は他にやることがないので無視

# # フレーム番号2から3の場合,次のページへの処理
execute if score VSC.page_transition VSC.main matches 0 if score @s VSC.frame matches 2..3 unless data block ~ ~ ~ Items[{tag:{vsc_key:"next"}}] run execute store result storage vsc_core:main tmp.frame int 1 run scoreboard players get @s VSC.frame
execute if score VSC.page_transition VSC.main matches 0 if score @s VSC.frame matches 2..3 unless data block ~ ~ ~ Items[{tag:{vsc_key:"next"}}] run function vsc_core:mode/page_transition/next with storage vsc_core:main tmp

# # フレーム番号3から4の場合,前のページへの処理
execute if score VSC.page_transition VSC.main matches 0 if score @s VSC.frame matches 3..4 unless data block ~ ~ ~ Items[{tag:{vsc_key:"back"}}] run execute store result storage vsc_core:main tmp.frame int 1 run scoreboard players get @s VSC.frame
execute if score VSC.page_transition VSC.main matches 0 if score @s VSC.frame matches 3..4 unless data block ~ ~ ~ Items[{tag:{vsc_key:"back"}}] run function vsc_core:mode/page_transition/back with storage vsc_core:main tmp


# 各レシピアイテムをクリックした場合の処理
# # まず、現在のページで表示しているレシピの数を取得し、ループを使って全てのスロットにおいて表示アイテムが存在するか確認していく
execute if score VSC.page_transition VSC.main matches 0 run function vsc_core:mode/check_recipe_list/individual
