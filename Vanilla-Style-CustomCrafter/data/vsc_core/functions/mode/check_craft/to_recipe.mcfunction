#> vsc_core:mode/check_craft/to_recipe
#
# @within vsc_core:mode/check_craft

# モード移行のための処理
execute store result storage vsc_core:main tmp.slot byte 1 run data get storage vsc_core:main gui.frame[0][{tag:{vsc_key:"recipe"}}].Slot
data modify storage vsc_core:main tmp.UUID set from entity @s UUID
function vsc_core:mode/check_craft/to_recipe_helper with storage vsc_core:main tmp
scoreboard players set @s VSC.mode 1
scoreboard players set @s VSC.page 1
# GUIを切り替える
data modify block ~ ~ ~ Items set from storage vsc_core:main gui.recipe_list[0]