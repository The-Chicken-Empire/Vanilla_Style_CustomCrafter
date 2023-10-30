#> vsc_core:load
#
# @within minecraft:load

# ------------------------------ 処理を行う部分 ------------------------------#

#>
# 主な操作に使用するスコア
# @internal
scoreboard objectives add VSC.main dummy
#>
# 現在カスタム作業台が表示しているレシピのインデックス。  
# 設定されていない場合はレシピ表示を行っていない。
# @internal
scoreboard objectives add VSC.recipeID dummy

data modify storage vsc_core:main recipes set value []

data modify storage vsc_core:main recipes append value {require:[{Slot: 2b, id: "minecraft:redstone", Count: 1b}, {Slot: 3b, id: "minecraft:redstone", Count: 1b}, {Slot: 10b, id: "minecraft:redstone", Count: 1b}, {Slot: 11b, id: "minecraft:redstone", Count: 1b}, {Slot: 12b, id: "minecraft:redstone", Count: 1b},{Slot: 19b, id: "minecraft:redstone", Count: 1b}, {Slot: 20b, id: "minecraft:redstone", Count: 1b}, {Slot: 21b, id: "minecraft:redstone", Count: 1b}],result:{Slot: 16b, id: "minecraft:armor_stand", Count: 1b, tag: {EntityTag: {NoGravity: 1b, Silent: 1b, Invulnerable: 1b, Marker: 1b, Invisible: 1b, Tags: ["VSC.core"]}, CustomModelData: 1, display: {Name: '{"text":"Custom Crafting Table","italic":false}'}}}}

data modify storage vsc_core:main recipes append value {require:[{Slot: 3b, id: "minecraft:diamond", Count: 1b}, {Slot: 11b, id: "minecraft:diamond", Count: 1b}, {Slot: 19b, id: "minecraft:stick", Count: 1b}],result:{Slot: 16b, id: "minecraft:diamond_sword", Count: 1b, tag: {Damage: 0}}}

data modify storage vsc_core:main recipes append value {require:[{Slot: 2b, id: "minecraft:diamond", Count: 1b},{Slot: 3b, id: "minecraft:diamond", Count: 1b}, {Slot: 11b, id: "minecraft:diamond", Count: 1b}, {Slot: 19b, id: "minecraft:stick", Count: 1b}],result:{Slot: 16b, id: "minecraft:diamond_sword", Count: 1b, tag: {Damage: 0,Enchantments:[{id:"minecraft:sharpness",lvl:5s}]}}}

data modify storage vsc_core:main gui set value [{Slot: 0b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, VSC.guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 4b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, VSC.guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 5b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, VSC.guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 6b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, VSC.guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 7b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, VSC.guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 8b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, VSC.guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 9b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, VSC.guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 13b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, VSC.guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 14b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {CustomModelData: 2, VSC.guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 15b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, VSC.guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 17b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, VSC.guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 18b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, VSC.guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 22b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, VSC.guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 23b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, VSC.guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 24b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, VSC.guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, VSC.guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, VSC.guiitem: 1, display: {Name: '{"text":" "}'}}}]


# ------------------------------ 宣言を行う部分 ------------------------------#

# -------------------- ストレージ --------------------#

#> 
# データを格納するためのストレージ
# vsc_core:main recipes でレシピのリストにアクセス
# vsc_core:main tmp に一時的なストレージを格納
# @internal
#define storage vsc_core:main

# -------------------- エンティティタグ --------------------#

#>
# カスタム作業台管理用防具立てにつける
# @internal
#define tag VSC.core

#>
# カスタム作業台管理用の防具立ての設置処理済みであることを示す
# @within vsc_core:*
# @within vsc_core:break/**
# @within vsc_core:place/**
#define tag VSC.placed

#>
# デバッグ時につけるタグ
# @internal
#define tag VSC.op

# -------------------- スコアホルダー --------------------#

