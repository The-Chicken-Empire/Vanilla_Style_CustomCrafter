#> vsc_core:break/delete_result_loop
#
# @within vsc_core:break/delete_result*

# レシピの要求素材部分のアイテムだけドロップアイテムとして召喚
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["VSC.return_item"]}
data modify entity @e[type=item,tag=VSC.return_item,limit=1,distance=..1,sort=nearest] Item set from storage vsc_core:main tmp.require[0]
tag @e[type=item,tag=VSC.return_item,limit=1,distance=..1,sort=nearest] remove VSC.return_item
data remove storage vsc_core:main tmp.require[0]

# ループ操作
scoreboard players add VSC.count VSC.main 1
execute if score VSC.count VSC.main < VSC.loop VSC.main run function vsc_core:break/delete_result_loop

# タグの定義
#>
# @private
#define tag VSC.return_item