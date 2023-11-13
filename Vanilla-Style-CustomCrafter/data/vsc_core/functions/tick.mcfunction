#> vsc_core:tick
#
# @within minecraft:tick

# カスタム作業台が設置された場合の処理
  execute as @e[type=minecraft:armor_stand,tag=VSC.core,tag=!VSC.placed] at @s align y run function vsc_core:place

# カスタム作業台設置後の処理全般
  execute as @e[type=minecraft:armor_stand,tag=VSC.core,tag=VSC.placed] at @s run function vsc_core:check

# GUI表示用アイテムを消す
  execute as @a[tag=!VSC.op] at @s run clear @s #vsc_core:all{vsc_guiitem:1}
  kill @e[type=item,nbt={Item:{tag:{vsc_guiitem:1}}}]

