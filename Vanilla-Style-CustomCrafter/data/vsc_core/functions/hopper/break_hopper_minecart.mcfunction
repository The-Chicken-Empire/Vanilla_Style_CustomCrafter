#> vsc_core:hopper/break_hopper_minecart
#
# @within vsc_core:check

damage @s 100 arrow
tellraw @a[distance=..5] {"text":"Can't place hopper under Custom Crafting Table!","color":"red","bold":true}