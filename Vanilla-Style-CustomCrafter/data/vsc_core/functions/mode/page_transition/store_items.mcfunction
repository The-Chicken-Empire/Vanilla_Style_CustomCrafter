#> vsc_core:mode/page_transition/store_items
#
# @within vsc_core:mode/page_transition/recipe

execute unless data storage vsc_core:main items run data modify storage vsc_core:main items set value []

# 個別のデータを保存
$data modify storage vsc_core:main items prepend value {UUID:$(UUID)}
data modify storage vsc_core:main items[0].items set from block ~ ~ ~ Items