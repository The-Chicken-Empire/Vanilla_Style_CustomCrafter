#> vsc_core:mode/check_recipe_list
#
# @within vsc_core:mode/separate_by_mode

# 各レシピアイテムをクリックした場合の処理





# クラフトモードへの遷移は共通なのでここでしてしまう
execute unless data block ~ ~ ~ Items[{tag:{vsc_key:"craft"}}] run function vsc_core:mode/page_transition/craft

# 現在の表示フレーム番号から行う操作を決定する

# # フレーム番号1は他にやることがないので無視

# # フレーム番号2,最初のページの場合 
execute if score @s VSC.frame matches 2 unless data block ~ ~ ~ Items[{tag:{vsc_key:"next"}}] run execute store result storage vsc_core:main tmp.frame int 1 run scoreboard players get @s VSC.frame
execute if score @s VSC.frame matches 2 unless data block ~ ~ ~ Items[{tag:{vsc_key:"next"}}] run function vsc_core:mode/page_transition/next with storage vsc_core:main tmp

# # フレーム番号3,最初と最後のページ以外の場合
execute if score @s VSC.frame matches 3 unless data block ~ ~ ~ Items[{tag:{vsc_key:"back"}}] run execute store result storage vsc_core:main tmp.frame int 1 run scoreboard players get @s VSC.frame
execute if score @s VSC.frame matches 3 unless data block ~ ~ ~ Items[{tag:{vsc_key:"back"}}] run function vsc_core:mode/page_transition/back with storage vsc_core:main tmp
execute if score @s VSC.frame matches 3 unless data block ~ ~ ~ Items[{tag:{vsc_key:"next"}}] run execute store result storage vsc_core:main tmp.frame int 1 run scoreboard players get @s VSC.frame
execute if score @s VSC.frame matches 3 unless data block ~ ~ ~ Items[{tag:{vsc_key:"next"}}] run function vsc_core:mode/page_transition/next with storage vsc_core:main tmp

# # フレーム番号4,最初と最後のページ以外の場合
execute if score @s VSC.frame matches 4 unless data block ~ ~ ~ Items[{tag:{vsc_key:"back"}}] run execute store result storage vsc_core:main tmp.frame int 1 run scoreboard players get @s VSC.frame
execute if score @s VSC.frame matches 4 unless data block ~ ~ ~ Items[{tag:{vsc_key:"back"}}] run function vsc_core:mode/page_transition/back with storage vsc_core:main tmp

#>
# @private
#define score_holder VSC.recipe_slot