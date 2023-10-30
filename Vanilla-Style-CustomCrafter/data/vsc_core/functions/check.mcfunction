#> vsc_core:check
#
# @within vsc_core:tick

# カスタム作業台の下にホッパーやホッパー付きトロッコがあった場合の処理
execute positioned ~ ~-1 ~ if block ~ ~ ~ hopper run function vsc_core:hopper/break_hopper
execute positioned ~ ~-1 ~ as @e[type=hopper_minecart,distance=..1] run function vsc_core:hopper/break_hopper_minecart

# カスタム作業台のGUI部分の処理。 開かれている場合にしか行わない。
execute if block ~ ~ ~ minecraft:barrel[open=true] run function vsc_core:gui/check

# カスタム作業台のクラフト部分の処理。開かれている場合にしか行わない。
execute if block ~ ~ ~ minecraft:barrel[open=true] run function vsc_core:craft/check

# カスタム作業台が壊された時の処理
execute unless block ~ ~ ~ minecraft:barrel run function vsc_core:break/check

