minetest.register_biome({
    name = "cheese",
    node_top = "mobs:cheeseblock",
    depth_top = 1,
    node_stone = "mobs:cheeseblock",
    node_water_top = "mobs:cheeseblock",
    depth_water_top = 10,
    y_max = weird_biomes.max.y,
    y_min = -8,
    heat_point = 20,
    humidity_point = 65,
})

minetest.register_biome({
    name = "cheese_ocean",
    node_top = "mobs:cheeseblock",
    depth_top = 1,
    node_water_top = "mobs:cheeseblock",
    depth_water_top = 10,
    y_max = -9,
    y_min = weird_biomes.secondary_min,
    heat_point = 0,
    humidity_point = 65,
})
