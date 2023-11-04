#> vsc_core:mode/recovery_items
#
# @within vsc_core:mode/**

# アイテムを戻す
$data modify block ~ ~ ~ Items set from storage vsc_core:main items[{UUID:$(UUID)}].items

# ストレージを消す
$data remove storage vsc_core:main items[{UUID:$(UUID)}]