#> vsc_core:break/check
#
# @within vsc_core:check

# クラフトモード以外であったなら保存していたデータ内容をドロップアイテムとして召喚
execute unless score @s VSC.mode matches 0 run data modify storage vsc_core:main tmp.UUID set from entity @s UUID
execute unless score @s VSC.mode matches 0 run function vsc_core:break/recovery with storage vsc_core:main tmp

# レシピを表示していたならレシピ表示されていたアイテムを消す。
execute if score @s VSC.craft_recipeID matches -2147483648..2147483647 store result storage vsc_core:main tmp.recipeID int 1 run scoreboard players get @s VSC.craft_recipeID
execute if score @s VSC.craft_recipeID matches -2147483648..2147483647 run function vsc_core:break/delete_result with storage vsc_core:main tmp

# カスタム作業台のアイテム化
summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"text":"Custom Crafting Table","italic":false}'},CustomModelData:1,EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["VSC.core"]}}}}

# 防具立て部分とアイテム化されたタルをkillする
kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},sort=nearest,limit=1,distance=..1]
kill @s
