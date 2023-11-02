#> vsc_core:init/frame
#
# @within vsc_core:load

data modify storage vsc_core:main gui.frame set value []

# page0 クラフトページ
data modify storage vsc_core:main gui.frame append value [{Slot: 0b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 4b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 5b, id: "minecraft:knowledge_book", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, vsc_key : "recipe",display: {Name: '{"text":"Recipe Mode"}'}}}, {Slot: 6b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 7b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 8b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 9b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 13b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 14b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 2, display: {Name: '{"text":" "}'}}}, {Slot: 15b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 17b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 18b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 22b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 23b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 24b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}]

# page1 レシピ表示。1ページしかレシピがない場合
data modify storage vsc_core:main gui.frame append value [{Slot: 0b, id: "minecraft:crafting_table", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, vsc_key : "craft",display: {Name: '{"text":"Craft Mode"}'}}}, {Slot: 1b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 7b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 8b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 9b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 10b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 16b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 17b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 18b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 19b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}]

# page2 レシピ表示。最初のページ
data modify storage vsc_core:main gui.frame append value [{Slot: 0b, id: "minecraft:crafting_table", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, vsc_key : "craft",display: {Name: '{"text":"Craft Mode"}'}}}, {Slot: 1b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 7b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 8b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 9b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 10b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 16b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 17b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 18b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 19b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:arrow", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, vsc_key : "next",display: {Name: '{"text":"Next Page"}'}}}]

# page3 レシピ表示。最初と最後以外のページ
data modify storage vsc_core:main gui.frame append value [{Slot: 0b, id: "minecraft:crafting_table", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, vsc_key : "craft",display: {Name: '{"text":"Craft Mode"}'}}}, {Slot: 1b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 7b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 8b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 9b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 10b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 16b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 17b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 18b, id: "minecraft:arrow", Count: 1b, tag: {CustomModelData: 2, vsc_guiitem: 1, vsc_key : "back",display: {Name: '{"text":"Go Back"}'}}}, {Slot: 19b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:arrow", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, vsc_key : "next",display: {Name: '{"text":"Next Page"}'}}}]

# page4 レシピ表示。最後のページ
data modify storage vsc_core:main gui.frame append value [{Slot: 0b, id: "minecraft:crafting_table", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, vsc_key : "craft",display: {Name: '{"text":"Craft Mode"}'}}}, {Slot: 1b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 7b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 8b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 9b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 10b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 16b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 17b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 18b, id: "minecraft:arrow", Count: 1b, tag: {CustomModelData: 2, vsc_guiitem: 1, vsc_key : "back",display: {Name: '{"text":"Go Back"}'}}}, {Slot: 19b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}]

# page5 個別のレシピ表示
data modify storage vsc_core:main gui.frame append value [{Slot: 0b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 4b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 5b, id: "minecraft:crafting_table", Count: 1b, tag: {CustomModelData: 1, vsc_guiitem: 1, vsc_key : "craft",display: {Name: '{"text":"Craft Mode"}'}}}, {Slot: 6b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 7b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 8b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 9b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 13b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 14b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 2, display: {Name: '{"text":" "}'}}}, {Slot: 15b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 17b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 18b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 22b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 23b, id: "minecraft:arrow", Count: 1b, tag: {CustomModelData: 2, vsc_guiitem: 1, vsc_key : "recipe",display: {Name: '{"text":"Go Back"}'}}}, {Slot: 24b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {vsc_guiitem: 1, CustomModelData: 1, display: {Name: '{"text":" "}'}}}]