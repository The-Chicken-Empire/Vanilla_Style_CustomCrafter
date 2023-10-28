#> vsc:craft_customcrafter
#
# @private

advancement revoke @s only vsc:craft_customcrafter
clear @s minecraft:knowledge_book 1
give @p armor_stand{display:{Name:'{"text":"カスタム作業台","italic":false}'},CustomModelData:1,EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["vsc_customcrafter_core"]}} 1