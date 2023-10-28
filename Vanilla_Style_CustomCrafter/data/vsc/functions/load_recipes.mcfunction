#> vsc:load_recipes
#
# @within vsc:load

data modify storage minecraft:vsc_customcrafter recipes set value []

data modify storage minecraft:vsc_customcrafter recipes append value {require:[{Slot: 2b, id: "minecraft:redstone", Count: 1b}, {Slot: 3b, id: "minecraft:redstone", Count: 1b}, {Slot: 10b, id: "minecraft:redstone", Count: 1b}, {Slot: 11b, id: "minecraft:redstone", Count: 1b}, {Slot: 12b, id: "minecraft:redstone", Count: 1b},{Slot: 19b, id: "minecraft:redstone", Count: 1b}, {Slot: 20b, id: "minecraft:redstone", Count: 1b}, {Slot: 21b, id: "minecraft:redstone", Count: 1b}],result:{Slot: 16b, id: "minecraft:armor_stand", Count: 1b, tag: {EntityTag: {NoGravity: 1b, Silent: 1b, Invulnerable: 1b, Marker: 1b, Invisible: 1b, Tags: ["vsc_customcrafter_core"]}, CustomModelData: 1, display: {Name: '{"text":"カスタム作業台","italic":false}'}}}}

data modify storage minecraft:vsc_customcrafter recipes append value {require:[{Slot: 3b, id: "minecraft:diamond", Count: 1b}, {Slot: 11b, id: "minecraft:diamond", Count: 1b}, {Slot: 19b, id: "minecraft:stick", Count: 1b}],result:{Slot: 16b, id: "minecraft:diamond_sword", Count: 1b, tag: {Damage: 0}}}