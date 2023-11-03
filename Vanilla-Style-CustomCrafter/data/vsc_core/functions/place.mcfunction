#> vsc_core:place
# 
# @within vsc_core:tick

# カスタム作業台設置

execute unless block ~ ~ ~ air run setblock ~ ~1 ~ barrel[facing=up]{CustomName:'{"text":"Custom Crafting Table"}'} replace

execute unless block ~ ~ ~ air run tp @s ~ ~1 ~

execute if block ~ ~ ~ air run setblock ~ ~ ~ barrel[facing=up]{CustomName:'{"text":"Custom Crafting Table"}'} replace

# guiを設定
execute at @s run data modify block ~ ~ ~ Items set from storage vsc_core:main gui.frame[0]

# 設置処理完了タグやスコア設定
tag @s add VSC.placed
scoreboard players set @s VSC.mode 0 
scoreboard players set @s VSC.frame 0 
scoreboard players set @s VSC.page 0 