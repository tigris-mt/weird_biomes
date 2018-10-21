minetest.register_biome({
    name = "cheese",
    node_top = "mobs:cheeseblock",
    depth_top = 1,
    node_stone = "mobs:cheeseblock",
    node_water_top = "mobs:cheeseblock",
    depth_water_top = 10,
    y_max = 4,
    y_min = -4,
    heat_point = 20,
    humidity_point = 65,
})

weird_biomes.include("cheese_decorations.lua")
