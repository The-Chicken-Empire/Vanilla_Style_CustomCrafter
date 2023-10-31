#> vsc_core:break/delete_result
#
# @within vsc_core:break/check

# 完成品データを持ってきてslotデータだけ消す
$data modify storage vsc_core:main tmp.result set from storage vsc_core:main recipes[$(recipeID)].result
data remove storage vsc_core:main tmp.result.Slot

# ドロップした完成品だけ消す
function vsc_core:break/delete_result_helper with storage vsc_core:main tmp

# ストレージをリセット
data remove storage vsc_core:main tmp
