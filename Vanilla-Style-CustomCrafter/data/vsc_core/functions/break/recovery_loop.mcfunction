#> vsc_core:break/recovery_loop
#
# @within vsc_core:break/recovery*

# ドロップアイテムとして召喚
summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["VSC.return_item"]}
data modify entity @e[type=item,tag=VSC.return_item,limit=1,distance=..1,sort=nearest] Item set from storage vsc_core:main tmp.items[0]
tag @e[type=item,tag=VSC.return_item,limit=1,distance=..1,sort=nearest] remove VSC.return_item


# ループ処理
data remove storage vsc_core:main tmp.items[0]
scoreboard players add VSC.count VSC.main 1
execute if score VSC.count VSC.main < VSC.loop VSC.main run function vsc_core:break/recovery_loop


#>
# @private 
#define tag VSC.return_item