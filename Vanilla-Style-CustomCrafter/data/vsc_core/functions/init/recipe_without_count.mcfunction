#> vsc_core:init/recipe_without_count
#
# @within vsc_core:load

data modify storage vsc_core:main recipes_no_count set from storage vsc_core:main recipes
data remove storage vsc_core:main recipes_no_count[{}].require[{}].Count
data remove storage vsc_core:main recipes_no_count[{}].result