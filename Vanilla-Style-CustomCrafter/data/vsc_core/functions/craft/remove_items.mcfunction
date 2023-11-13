#> vsc_core:craft/remove_items
#
# @within vsc_core:craft/check_pickup

$data modify storage vsc_core:main tmp.require set from storage vsc_core:main recipes[$(recipeID)].require

execute store result score VSC.tmp1 VSC.main run data get storage vsc_core:main tmp.data.Items[{Slot:1b}].Count
execute store result score VSC.tmp2 VSC.main run data get storage vsc_core:main tmp.require[{Slot:1b}].Count
scoreboard players operation VSC.tmp1 VSC.main -= VSC.tmp2 VSC.main
execute if score VSC.tmp1 VSC.main matches 1.. store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get VSC.tmp1 VSC.main
execute unless score VSC.tmp1 VSC.main matches 1.. run data remove block ~ ~ ~ Items[{Slot:1b}]

execute store result score VSC.tmp1 VSC.main run data get storage vsc_core:main tmp.data.Items[{Slot:2b}].Count
execute store result score VSC.tmp2 VSC.main run data get storage vsc_core:main tmp.require[{Slot:2b}].Count
scoreboard players operation VSC.tmp1 VSC.main -= VSC.tmp2 VSC.main
execute if score VSC.tmp1 VSC.main matches 1.. store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get VSC.tmp1 VSC.main
execute unless score VSC.tmp1 VSC.main matches 1.. run data remove block ~ ~ ~ Items[{Slot:2b}]

execute store result score VSC.tmp1 VSC.main run data get storage vsc_core:main tmp.data.Items[{Slot:3b}].Count
execute store result score VSC.tmp2 VSC.main run data get storage vsc_core:main tmp.require[{Slot:3b}].Count
scoreboard players operation VSC.tmp1 VSC.main -= VSC.tmp2 VSC.main
execute if score VSC.tmp1 VSC.main matches 1.. store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players get VSC.tmp1 VSC.main
execute unless score VSC.tmp1 VSC.main matches 1.. run data remove block ~ ~ ~ Items[{Slot:3b}]

execute store result score VSC.tmp1 VSC.main run data get storage vsc_core:main tmp.data.Items[{Slot:10b}].Count
execute store result score VSC.tmp2 VSC.main run data get storage vsc_core:main tmp.require[{Slot:10b}].Count
scoreboard players operation VSC.tmp1 VSC.main -= VSC.tmp2 VSC.main
execute if score VSC.tmp1 VSC.main matches 1.. store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players get VSC.tmp1 VSC.main
execute unless score VSC.tmp1 VSC.main matches 1.. run data remove block ~ ~ ~ Items[{Slot:10b}]

execute store result score VSC.tmp1 VSC.main run data get storage vsc_core:main tmp.data.Items[{Slot:11b}].Count
execute store result score VSC.tmp2 VSC.main run data get storage vsc_core:main tmp.require[{Slot:11b}].Count
scoreboard players operation VSC.tmp1 VSC.main -= VSC.tmp2 VSC.main
execute if score VSC.tmp1 VSC.main matches 1.. store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get VSC.tmp1 VSC.main
execute unless score VSC.tmp1 VSC.main matches 1.. run data remove block ~ ~ ~ Items[{Slot:11b}]

execute store result score VSC.tmp1 VSC.main run data get storage vsc_core:main tmp.data.Items[{Slot:12b}].Count
execute store result score VSC.tmp2 VSC.main run data get storage vsc_core:main tmp.require[{Slot:12b}].Count
scoreboard players operation VSC.tmp1 VSC.main -= VSC.tmp2 VSC.main
execute if score VSC.tmp1 VSC.main matches 1.. store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players get VSC.tmp1 VSC.main
execute unless score VSC.tmp1 VSC.main matches 1.. run data remove block ~ ~ ~ Items[{Slot:12b}]

execute store result score VSC.tmp1 VSC.main run data get storage vsc_core:main tmp.data.Items[{Slot:19b}].Count
execute store result score VSC.tmp2 VSC.main run data get storage vsc_core:main tmp.require[{Slot:19b}].Count
scoreboard players operation VSC.tmp1 VSC.main -= VSC.tmp2 VSC.main
execute if score VSC.tmp1 VSC.main matches 1.. store result block ~ ~ ~ Items[{Slot:19b}].Count byte 1 run scoreboard players get VSC.tmp1 VSC.main
execute unless score VSC.tmp1 VSC.main matches 1.. run data remove block ~ ~ ~ Items[{Slot:19b}]

execute store result score VSC.tmp1 VSC.main run data get storage vsc_core:main tmp.data.Items[{Slot:20b}].Count
execute store result score VSC.tmp2 VSC.main run data get storage vsc_core:main tmp.require[{Slot:20b}].Count
scoreboard players operation VSC.tmp1 VSC.main -= VSC.tmp2 VSC.main
execute if score VSC.tmp1 VSC.main matches 1.. store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players get VSC.tmp1 VSC.main
execute unless score VSC.tmp1 VSC.main matches 1.. run data remove block ~ ~ ~ Items[{Slot:20b}]

execute store result score VSC.tmp1 VSC.main run data get storage vsc_core:main tmp.data.Items[{Slot:21b}].Count
execute store result score VSC.tmp2 VSC.main run data get storage vsc_core:main tmp.require[{Slot:21b}].Count
scoreboard players operation VSC.tmp1 VSC.main -= VSC.tmp2 VSC.main
execute if score VSC.tmp1 VSC.main matches 1.. store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run scoreboard players get VSC.tmp1 VSC.main
execute unless score VSC.tmp1 VSC.main matches 1.. run data remove block ~ ~ ~ Items[{Slot:21b}]

data modify storage vsc_core:main tmp.data.Items set value []
data modify storage vsc_core:main tmp.data.Items append from block ~ ~ ~ Items[{Slot:1b}]
data modify storage vsc_core:main tmp.data.Items append from block ~ ~ ~ Items[{Slot:2b}]
data modify storage vsc_core:main tmp.data.Items append from block ~ ~ ~ Items[{Slot:3b}]
data modify storage vsc_core:main tmp.data.Items append from block ~ ~ ~ Items[{Slot:10b}]
data modify storage vsc_core:main tmp.data.Items append from block ~ ~ ~ Items[{Slot:11b}]
data modify storage vsc_core:main tmp.data.Items append from block ~ ~ ~ Items[{Slot:12b}]
data modify storage vsc_core:main tmp.data.Items append from block ~ ~ ~ Items[{Slot:19b}]
data modify storage vsc_core:main tmp.data.Items append from block ~ ~ ~ Items[{Slot:20b}]
data modify storage vsc_core:main tmp.data.Items append from block ~ ~ ~ Items[{Slot:21b}]

# スコアリセット
scoreboard players reset VSC.tmp1 VSC.main
scoreboard players reset VSC.tmp2 VSC.main

#>
# @within vsc_core:craft/remove_items*
  #define score_holder VSC.tmp1
  #define score_holder VSC.tmp2
  