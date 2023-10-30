#> vsc_core:hopper/break_hopper
#
# @within vsc_core:check

setblock ~ ~ ~ air destroy
tellraw @a[distance=..5] {"text":"Can't place hopper under Custom Crafting Table!","color":"red","bold":true}