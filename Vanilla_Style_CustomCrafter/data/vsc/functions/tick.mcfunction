#> vsc:tick
#
# @private

# 設置処理完了タグが無い場合 設置処理

execute as @e[type=minecraft:armor_stand,tag=vsc_customcrafter_core,tag=vsc_placed] at @s run function vsc:diff_item

execute as @e[type=minecraft:armor_stand,tag=vsc_customcrafter_core,tag=vsc_placed] at @s if block ~ ~ ~ minecraft:barrel[open=true] run function vsc:craft_item

execute as @e[type=minecraft:armor_stand,tag=vsc_customcrafter_core,tag=!vsc_placed] at @s run function vsc:place_customcrafter

execute as @e[type=minecraft:armor_stand,tag=vsc_customcrafter_core,tag=vsc_placed] at @s if block ~ ~ ~ air run function vsc:break_customcrafter

execute as @a[tag=!op] at @s run function vsc:remove_guiitem