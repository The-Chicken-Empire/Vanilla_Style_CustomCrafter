#> vsc_core:craft
#
# @within vsc_core:craft_vsc

advancement revoke @s only vsc_core:craft_vsc
clear @s minecraft:knowledge_book 1
give @p armor_stand{display:{Name:'{"text":"Custom Crafting Table","italic":false}'},CustomModelData:1,EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["VSC.core"]}} 1
