#> vsc:break_customcrafter
#
# @within vsc:tick


execute if score @s VSC.recipeID matches 0.. run kill @e[type=item,distance=..1.5]
execute if score @s VSC.recipeID matches 0.. store result storage minecraft:vsc_customcrafter temp int 1 run scoreboard players get @s VSC.recipeID
execute if score @s VSC.recipeID matches 0.. run function vsc:break_recipe with storage minecraft:vsc_customcrafter {}
execute unless score @s VSC.recipeID matches 0.. run kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},limit=1,sort=nearest,distance=..1]

summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"text":"カスタム作業台","italic":false}'},CustomModelData:1,EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["vsc_customcrafter_core"]}}}}
kill @s