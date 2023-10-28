#> vsc:remove_guiitem
#
# @within vsc:tick

clear @s minecraft:light_gray_stained_glass_pane{vsc_guiitem:1}

kill @e[type=item,nbt={Item:{tag:{vsc_guiitem:1}}}]