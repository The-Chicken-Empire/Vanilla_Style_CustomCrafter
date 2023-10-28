#> vsc:load
#
# @private

# スコア追加
scoreboard objectives add VSC.Success dummy
scoreboard objectives add VSC.result dummy
scoreboard objectives add VSC.return_item_loop dummy
scoreboard objectives add VSC.craft_item_loop dummy
scoreboard objectives add VSC.create_item.Success dummy
scoreboard objectives add VSC.craft_pickupcheck.success dummy
scoreboard objectives add VSC.recipeID dummy
scoreboard objectives add VSC.break_recipe_loop dummy
scoreboard objectives add VSC.break_recipe_st dummy

# カスタム作業台の初期配置
data modify storage minecraft:vsc_customcrafter customcrafter set value [{Slot: 0b, id: "minecraft:light_gray_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 4b, id: "minecraft:light_gray_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 5b, id: "minecraft:light_gray_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 6b, id: "minecraft:light_gray_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 7b, id: "minecraft:light_gray_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 8b, id: "minecraft:light_gray_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 9b, id: "minecraft:light_gray_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 13b, id: "minecraft:light_gray_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 14b, id: "minecraft:light_gray_stained_glass_pane", Count: 1b, tag: {CustomModelData: 2, vsc_guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 15b, id: "minecraft:light_gray_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 17b, id: "minecraft:light_gray_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 18b, id: "minecraft:light_gray_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 22b, id: "minecraft:light_gray_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 23b, id: "minecraft:light_gray_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 24b, id: "minecraft:light_gray_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:light_gray_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:light_gray_stained_glass_pane", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, display: {Name: '{"text":" "}'}}}]
 
# レシピ追加
function vsc:load_recipes